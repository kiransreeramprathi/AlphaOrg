public class paysliphandler {
    /*public paysliphandler(ApexPages.StandardController stdController){}
    public list<Salary_Record__c> empsal{get;set;}
    public list<Employee_Details__c> empd{get;set;}*/
    public Employee_Details__c emp{get;set;}
    public Salary_Record__c sal{get;set;}
     public String currentTab {get;set;}
    public paysliphandler(){
        emp =new Employee_Details__c();
        sal=new Salary_Record__c();
    }
    public pagereference saverecord(){
        emp.Last_name__c=emp.Last_name__c;
        insert emp;
        Employee_Details__c empd1=new Employee_Details__c();
        //empd1.Name=Employee_Details__c.Name;
        Salary_Record__c empsal1=new Salary_Record__c();
        empsal1.EMPLOYEE_NAME__c=empd1.id;
        insert empsal1;
        sal.EMPLOYEE_NAME__c=emp.Id;
        insert sal;
        pagereference p=new pagereference('/'+emp.Id);
        return p;
    }
/*public void switch()
    {
        currentTab = '1';
    } 
   // public void switch() { currentTab = String.valueOf(Integer.valueOf(currentTab)+1); }
    public void Prev() { currentTab = String.valueOf(Integer.valueOf(currentTab)-1); }*/
    public pagereference nextpage(){
       pagereference p=new pagereference('/apex/newempvfp2');
        return p; 
    }
    public pagereference previouspage(){
       //pagereference p=new pagereference('/apex/newempvfp');
        return page.newempvfp; 
    }
}