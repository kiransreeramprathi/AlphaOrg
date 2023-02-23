public class EmpComponentcls {
    @auraEnabled
    public static list<Employee_Details__c> getEmprec(){
        list<Employee_Details__c> emps=[select Name,Employee_ID__c,Monthly_salary__c,Gender__c,Email_ID__c  from Employee_Details__c];
        return emps;
    }
}