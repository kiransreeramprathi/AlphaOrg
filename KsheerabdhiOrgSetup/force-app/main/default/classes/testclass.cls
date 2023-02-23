@istest
public class testclass {
    /*@istest static void test1(){
        account newacc=new account();
        newacc.Name='testacc';
        insert newacc;
        case newcase= new case();
        newcase.Status='new';
        newcase.Origin='Phone';
        newcase.AccountId=newacc.Id;
        insert newcase;
       list<case> updatedcase=new list<case> ();
        newcase.Status='closed';
        updatedcase.add(newcase); 
           update updatedcase;
    }*/
   /* @istest static void testrun(){
        account acc=new account();
        acc.Name='test';
        insert acc;
        Opportunity opp =new Opportunity();
        opp.Name= 'test name';
        opp.CloseDate= date.today();
        opp.StageName= 'Negotiation/Review';
        //opp.AccountId=acc.Id;
        insert opp;
        opp.StageName= 'Closed Won';
        update opp;
        task newtask=new task();
                newtask.Subject='Other';
                newtask.Priority='High';
                newtask.Status='Not Started';
                newtask.Description='test case automate'+'=>'+opp.Name;
                insert newtask;
    }*/
    @istest static void live0202(){
        account acc= new account();
        acc.Name='lvc test';
        insert acc;
        Opportunity opp =new Opportunity();
        opp.Name= acc.Name+date.today();
        opp.CloseDate= date.today();
        opp.StageName= 'Negotiation/Review';
        opp.AccountId=acc.Id;
        insert opp;
        opp.StageName='closed lost';
        update opp;
    }
}