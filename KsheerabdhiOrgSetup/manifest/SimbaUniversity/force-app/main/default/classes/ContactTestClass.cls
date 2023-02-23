@istest
public class ContactTestClass {
    @istest
    public static void method1(){
        account acc=new account();
        acc.Name='xyz';
        insert acc;
        contact con=new contact();
        con.LastName='abc';
        con.AccountId=acc.id;
        insert con;
        contact con1=new contact();
        con1.LastName='abc';
        insert con1;
        con1.AccountId=acc.id;
        update con1;
        delete con1;
    }
}