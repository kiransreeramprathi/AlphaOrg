@istest
public class live1404test {
    @istest static void testcode(){
        account acc= new account();
        acc.Name='Demo test';
        insert acc;
        Case clist= new case();
        clist.Status='new';
        clist.AccountId=acc.id;
        clist.Origin='phone';
        clist.Priority='Low';
        insert clist;
    }

}