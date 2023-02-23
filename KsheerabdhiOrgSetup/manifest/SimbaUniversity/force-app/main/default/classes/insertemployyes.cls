public class insertemployyes {
    public static void method1(){
        //list<Antra_Employees__c> aemp=new list<Antra_Employees__c>();
        for(integer i=1;i<=20;i++){
            Antra_Employees__c emp=new Antra_Employees__c();
            emp.Employee_Salary__c=25000+i;
            insert emp;
        }
    }
}