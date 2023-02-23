public class livecode080422 {
/*"write a trigger which will update RevenueGenerated field( in account create a currency field) with the sum of amount field values in 
 * related opportunities.
Only when an list of opportunities related to that account is updated to closed won.consider the existing opportunities also for an account"*/
    public static void method1(list<Opportunity> opp){
        opp=[select name,id,AccountId from Opportunity where StageName ='Closed Won'];
        set<id> accid=new set<id>();
        for (Opportunity opp1:opp){
                accid.add(opp1.AccountId);
            map<id,decimal> map1=new map<id,decimal>();
            list<AggregateResult>agglist=[select AccountId,sum(amount)total from Opportunity group by accountid];
            for(AggregateResult agglist1:agglist){
                map1.put((id)agglist1.get('AccountId'),(decimal)agglist1.get('total'));
            }
            list<account> acclist=[select id,currency__c from account where id in: accid];
            for(account acclist1:acclist){
                acclist1.currency__c=map1.get(acclist1.id);
            }update acclist;
        }
    }
    /*take a list of contacts as input and get all the accounts related to each contact where source is web and create a map which 
have key value as account name and value as list of opportunities for those specific accounts*/
    public static void task2(list<contact> con){
        set<id> accid=new set<id>();
        list<account> acclist=[select id,name,(select id,name from contacts) from account];
        for(account acclist1:acclist){
        }
    }
}