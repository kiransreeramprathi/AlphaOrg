@istest
private class AntraBatchDeletePracTest {
@istest
    static void method1(){
       list<Opportunity> opp=[select id,Amount, Name from Opportunity where amount!=null];
        for(Opportunity o:opp){
            o.Amount=o.Amount+1;
        }
        test.startTest();
        update opp;
        test.stopTest();
        AntraBatchDeletePrac abd=new AntraBatchDeletePrac();
       id jobid= database.executeBatch(abd);
        
    }
}