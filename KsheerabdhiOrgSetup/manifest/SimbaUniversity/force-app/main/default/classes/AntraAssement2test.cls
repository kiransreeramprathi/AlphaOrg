@istest
public class AntraAssement2test {
@istest
    public static void method1(){
        Antra_Employees__c em=new Antra_Employees__c();
        em.Employee_Salary__c=26000;
        em.Status__c='Not Selected';
        insert em;
        Antra_Employees__c em1=new Antra_Employees__c();
        em1.Employee_Salary__c=20000;
        em1.Status__c='Selected';
        insert em1;
        AntraAssesmentq2 asse=new AntraAssesmentq2();
        database.executeBatch(asse);
    }
}