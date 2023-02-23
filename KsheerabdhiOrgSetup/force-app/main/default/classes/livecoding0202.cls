public class livecoding0202 {
/*create two Number fields on account object "NoOfClosedWonOpportunities",NoOfClosedLostOpportunities. 
when ever opportunities stage is updated to closed won or closed lost then the count of all the closed won Opportunities 
must be updated in "NoOfClosedWonOpportunities" field and the count of all the closed lost Opportunities must be updated 
in "NoOfClosedlostOpportunities" field on that specific account.*/
    public static void task1(list<opportunity> opp1){
        set<id> oppacid=new set<id>();
        for(opportunity opp2:opp1){
            if(opp2.accountid!=null){
                oppacid.add(opp2.AccountId);
            }
        }
        integer opcl=[select count() from opportunity where StageName='Closed Lost' and accountid in :oppacid];
        system.debug(opcl);
        integer opcw=[select count() from opportunity where StageName='Closed Won' and accountid in :oppacid];
        system.debug(opcw);
        list<account> acclist=[select id,No_of_closed_Lost_Opportunities__c,No_of_closed_won_Opportunities__c 
                               from account where id in: oppacid];
        for(account acc:acclist){
            acc.No_of_closed_Lost_Opportunities__c=opcl;
            acc.No_of_closed_won_Opportunities__c=opcw;
        }
        update acclist;
    }

}