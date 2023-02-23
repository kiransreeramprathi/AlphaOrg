public class ContactTriggerHandler {
    public static void NumOfConForAcc(list<contact>conlist){
        map<id,integer> map1=new map<id,integer>();
        list<aggregateresult>aglist=[select count(id)num,accountid from contact group by accountid];
        for(aggregateresult ag:aglist){
            map1.put((Id)ag.get('accountid'),(integer)ag.get('num'));
        }
        list<account> acclist=[select id,No_Of_Contacts_For_This_Account__c from account];
        for(account ac:acclist){
            ac.No_Of_Contacts_For_This_Account__c=map1.get(ac.Id);
        }
        update acclist;
    }
}