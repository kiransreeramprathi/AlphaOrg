@istest
private class BatchInsertTest {
    @istest
    static void method1(){
        for(integer i=1;i<=10;i++){
            Account acc=new Account();
            acc.Name='LG'+i;
            acc.BillingCity='London';
            acc.AccountNumber='123456'+i;
            insert acc;
        }
        list<account> aclist=[select name,BillingCity from account where BillingCity='Hyderabad'];
         delete aclist;
        test.startTest();
        /*BatchInsert bi=new BatchInsert();
database.QueryLocator ql=bi.start(null);
bi.execute(null, aclist);
bi.finish(null);*/
        BatchInsert bi=new BatchInsert();
        id jobid=database.executeBatch(bi);
        test.stopTest();
        Integer count = [Select count() from account where BillingCity='London'];
        System.assertEquals(0, count);
        
    }
}