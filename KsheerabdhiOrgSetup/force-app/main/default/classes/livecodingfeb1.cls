public class livecodingfeb1 {
   /* "create noOfClosedCases__c field on account object. when ever a list of cases are closed then the value of 
    * noOfClosedCases__c must be updated in their respective accounts

for example:
 cloudTaru account has 4 cases in which 2 are inprogress and 2 are already closed
 infosys account has 3 cases in which 2 are in progress and 1 is already closed
 when 2 cases of cloud taru and 1 case of infosys are closed noOfClosedCases__c 
field must be updated as 4 and 2 in cloudTaru and infosys accounts respectively "*/
    public static void task1(list<case> clist){
        set<id> caseid=new set<id>();
        for(case cl:clist){
            if(cl.AccountId!=null){
               caseid.add(cl.AccountId);
            }
        }
        list<aggregateresult> aglist=[select accountid,count(id)closedcount from case where status ='closed' 
                                      and accountid in:caseid group by accountid];
        map<id,account> m1=new map<id,account>([select id, number_of_closed_cases__c from account where id in:caseid]);
        for(aggregateresult r1 : aglist){
            m1.get((string)r1.get('accountid')).number_of_closed_cases__c = (integer)r1.get('closedcount');
        }
        update m1.values();
    }
/*trigger casetasks on Case (before insert,after insert,before update, after update,before delete,after delete) {
    if(trigger.isafter && trigger.isupdate){
        livecodingfeb1.task1(trigger.new);
    }
}*/
}