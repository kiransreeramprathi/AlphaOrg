@istest
public class AntrafuturecallPractest {
    @istest
    public static void test1(){
        account acc=new account();
        acc.Name='test';
        insert acc;
        contact con=new contact();
        con.AccountId=acc.Id;
        con.LastName=acc.Name;
        insert con;
        swaroopFutureprac2.insoppcon(acc.Name,acc.id);
    }
}