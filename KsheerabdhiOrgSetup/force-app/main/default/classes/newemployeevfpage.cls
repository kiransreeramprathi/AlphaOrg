public class newemployeevfpage {
    public Employee_Details__c empd{get;set;}
    public string empname{get;set;}
    public string emplastname{get;set;}
    Public string newSalution{get;set;}
    public date newDate_of_Birth{get;set;}
    public Salary_Record__c sal{get;set;}
    public integer basicsalary{get;set;}
    
    public newemployeevfpage(){
        empd =new Employee_Details__c();
        sal=new Salary_Record__c();
    }
    
    public pagereference next(){
        pagereference p=new pagereference('/apex/newempvfp2');
        return p; 
    }
    public pagereference submit(){
         empd=new Employee_Details__c();
        empd.Name=empname;
        empd.Last_name__c=emplastname;
        empd.Date_of_Birth__c=newDate_of_Birth;
        empd.Salution__c=newSalution;
        insert empd;
        sal.EMPLOYEE_NAME__c=empd.id;
        sal.BASIC_SALARY__c=basicsalary;
        insert sal;
        pagereference p=new pagereference('/'+empd.Id);
        return p; 
    }
    /* for pick list option*/
   Public List<selectOption> getSalution()
    {
        List<selectOption> saluList = new List<selectOption>();
        //saluList.add(new selectOption('other','--other--'));
        List<Schema.PicklistEntry> getsaluList = Employee_Details__c.Salution__c.getDescribe().getPickListValues();
        for(Schema.PicklistEntry saluList2 : getsaluList)
        {
            saluList.add(new selectOption(saluList2.getValue(),saluList2.getLabel()));
        }
        return saluList;
    }
    public pagereference prev(){
        pagereference p=new pagereference('/apex/newempvfp');
        return p; 
    }
}