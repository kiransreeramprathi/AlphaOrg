public class AntraDmlprac {
    public string input{get;set;}
    public string Mobile{get;set;}
    public Employee_Details__c emp;
    public string opmsg{get;set;}
    public string opname{get;set;}
    
    public void search(){
        integer cut=[select count() from Employee_Details__c where Employee_ID__c = : input];
        if(cut>=1){
            emp=[select Phone_number__c,Employee_name__c from Employee_Details__c where Employee_ID__c = : input limit 1];
            mobile=emp.Phone_number__c;
            opname=emp.Employee_name__c;
        }else{
            opmsg='sorry macha unable to find the record';
        }
    }
    
    public void updatevalue(){
        emp.Phone_number__c=mobile;
        update emp;
    }

}