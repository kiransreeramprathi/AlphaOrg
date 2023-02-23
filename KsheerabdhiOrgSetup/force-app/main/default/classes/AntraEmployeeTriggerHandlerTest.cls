@istest
private class AntraEmployeeTriggerHandlerTest {
@istest
    static void method1(){
        Antra_Employee__c emp=new Antra_Employee__c();
        emp.Department_ID__c='a015j00000HnHEdAAN';
        emp.First_name__c='xyz';
        insert emp;
        Antra_Employee__c emp1=new Antra_Employee__c();
        emp1.Department_ID__c='a015j00000HnHEdAAN';
        emp1.First_name__c='xy';
        insert emp1;
        Antra_Employee__c emp2=new Antra_Employee__c();
        emp2.Department_ID__c='a015j00000HnHEdAAN';
        emp2.First_name__c='xy';
        insert emp2;
        Antra_Employee__c emp3=new Antra_Employee__c();
        emp3.Department_ID__c='a015j00000HnHEdAAN';
        emp3.First_name__c='xy';
        insert emp3;
    }
}