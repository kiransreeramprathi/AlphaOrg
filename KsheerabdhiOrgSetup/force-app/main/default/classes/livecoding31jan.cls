public class livecoding31jan {
   /*In Contact Object,When level__c  picklist is Null , dont save the record and throw and error message
    *  """"""""You can't save an contact with level fields as Null make sure to select any of the picklist."""""""".
Do this using trigger adderror method*/
    public static void tsk1(list<contact> clist){
        for(contact clist2:clist){
            if(clist2.Level__c==null){
                clist2.addError('cannot save the contact due to level value is empty');
            }
        } 
    }
/*create a picklistfield called level__c on contact object which has three pick values called 
 * 'Primary','secondary','tertiary'. Also create three fields noOfPrimaryContacts,noOfSecondaryContacts,
 * noOfTertiaryContacts which are number data type. when there is a contact/list of contacts are inserted , 
 * based on the level__c count the number of contacts that are primary,seconday,tertiary and update these values in 
 * related account*/
    public static void task2(list<contact> clist, map<id,contact> maplist){
        set<id> idset=new set<id>();
        for(contact clist1:clist){
            idset.add(clist1.accountid);
        }
        list<AggregateResult> agg1=[select accountid,count(id) levelvalue from contact where Level__c in 
                                    ('Primary','Tertiary','Secondary') and accountid in:idset group by Level__c,accountid];
        
        list<account> acc=new list<account>();
        for(aggregateresult result : agg1){
            string str = string.valueof(result.get('accountid'));
            integer num= integer.valueof(result.get('levelvalue'));
            account newacc=new account(id=str,number_of_primary_contacts__c=num);
        	acc.add(newacc);
        }
        update acc;
    }
}