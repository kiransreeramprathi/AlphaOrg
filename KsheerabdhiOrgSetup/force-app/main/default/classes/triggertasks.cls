public class triggertasks 
{
    public static boolean runonce=true;
    public static void task1(list<account> acclist){
        //list<account> acclist=[select name,Description from account];
        for(account acc:acclist)
            if (acc.Description==null||acc.Description.length()<10)
        {
            acc.Description='this description is written by apex programing when field is null or char is lessthan 10';
        }
    }
    public static void task2(list<account>acclist){
        for(account acc:acclist){if (acc.Description==null||acc.Description.length()<10)
        {
            acc.Description='this description is written by apex programing when field is null or char is lessthan 10';
        }
                                 
                                }
    }
    public static void task2contact(list<account>acclist)
    {
        list<contact> cntlist=new list<contact>();
        for(account acc:acclist){
            for(integer i=1;i<=5;i++){
                contact newcnt=new contact();
                newcnt.LastName=acc.Name+i;
                newcnt.AccountId=acc.Id;
                cntlist.add(newcnt);
            }
            if(!cntlist.isempty())
                insert cntlist;
        }
    }
    public static void task3 (list<Account> acclist){
        Set<id> setid = new set<id>();
        for(Account acc1:acclist ){
            if(!string.isBlank(acc1.BillingCity)  || string.isNotEmpty(acc1.BillingCity))
                setid.add(acc1.id);
        }
        list<Contact> con = [SELECT id,name,Accountid, MailingCity, Account.BillingCity,LastModifiedDate FROM Contact  WHERE Accountid in:setid ];
        for(Contact cons:con){
            cons.MailingCity = cons.Account.BillingCity;
        }
        update con;    
    }
    public static void task4 (List<Account> acclist) {
        List<String> ListOfNames = new List<String> ();
        List<account> Listofaccount = [Select Name, Id from Account];
        for (Account acc4 : Listofaccount) {
            ListofNames.add(acc4.Name);
        }
        //system.debug(ListOfNames);
        
        for(Account a : acclist) {
            if(ListOfNames.contains(a.Name)){
                a.Name.addError('Name already exits');
            }
        }
        
    }
    /*when a  opportunity is Closed Won  then update the field on account object.create a field on account 
object as Total opprtunityAmountWon. */ 
    public static void oppup(list<Opportunity> acc)
    {
        acc=[select name,id,AccountId from Opportunity];
        set<id> idset=new set<id>();
        for(Opportunity opp:acc)
        {
            idset.add(opp.AccountId);
        }
        map<id,decimal> map1=new map<id,decimal>();
        list<AggregateResult> opp=[Select accountid,SUM(amount)tot from Opportunity  group by accountid ];
        for(AggregateResult aglis:opp){
            map1.put((ID)aglis.get('accountid'),(decimal)aglis.get('tot'));
        }
        list<account> acclist=[select id,Total_opprtunity_Amount_Won__c from account where id in :idset];
        for(account ac1: acclist){
            ac1.Total_opprtunity_Amount_Won__c=map1.get(ac1.id);
        }
        update acclist;
        /*triggerclass:if(trigger.isafter && (trigger.isupdate|| trigger.isinsert)){
triggertasks.oppup(trigger.new);*/
    }
    // Whenever new contact  is created with Lead Source as Phone Inquiry  then update Description 
    // filed with "These contact is refered by Jain Telecom Industry ".
    public static void Practice2(list<contact>contlist){
        //contlist=[select AccountId,Name,LeadSource from contact];
        for(contact cc:contlist){
            if(cc.LeadSource=='Phone Inquiry'){
                cc.Description='These contact is refered by Jain Telecom Industry';
            }
        }
        /*trigger:trigger contacttest on Contact (before insert,after insert,before update,after update) 
{
if(trigger.isbefore && trigger.isupdate ){
triggertasks.Practice2(trigger.new);
}
}*/
    }
    //"""create noOflostOpportunites field on account object. when ever a list of opportunity are closed 
    //lost  then the value of noOflostOpportunites must be updated in their respective accounts.
    //so in thisway the client will need not to go opportunity object and check for the lost opportunities."""
    public static void Practice3(list<Opportunity> oppList){
        oppList=[select name,AccountId,id from Opportunity];
        set<id> setids=new set<id>();
        for(Opportunity oppList1:oppList){
            setids.add(oppList1.AccountId);
        }
        map<id,integer> mapList1=new map<id,integer>();
        list<Aggregateresult> opplostq=[Select accountid,count(id)tot from Opportunity where StageName='Closed Lost'  group by accountid];
        for(Aggregateresult opplostq1:opplostq){
            mapList1.put((id)opplostq1.get('accountid'),(integer)opplostq1.get('tot'));
        }
        list<account> accList1=[select id,No_of_Lost_Opportunities__c from account where id in :setids ];
        for(account accList2:accList1){
            accList2.No_of_Lost_Opportunities__c=mapList1.get(accList2.Id);
        }
        update accList1;
        /*trigger class:if(trigger.isafter && (trigger.isupdate || trigger.isinsert)){
triggertasks.Practice3(trigger.new);*/
        
    }
    /*Whenever a Lead record is created, if the Name field does not contain either "Mr." or "Mrs.",
prefix either "Mr." or "Mrs." to the Name field*/
    public static void task5(list<lead> leadList1){
        for(lead leadList2:leadList1){
            if(string.isBlank(leadList2.Salutation)){
                leadList2.Salutation='Mr. or Ms.';
            }
        }
    }
    //When a Contact record is Deleted, if the Contact record is related to Account record, prevent deleting it
    public static void task6(list<contact> conList){
        for(contact conList1:conList){
            if(string.isNotBlank(conList1.AccountId)){
                conList1.AccountId.adderror('contact is linked with account so unable to delete');
            }
        }
    }
    /*create TotalAgreementValue - Currenecy  Field on Account, 
create IntialAgreementValue and FinalAgreementValue Fields  type- currency on contact Object create one more field type - 
Picklist name - AgreementStatus ,values - (Filling ,in Request,approved) and set default as filling , 
whenever the contact is changed from AgreementStatus - in Request to approved then update the respective field's FinalAgreementValue  on contact 
and TotalAgreementValue on account with value of IntialAgreementValue.
EX :- account - name :acc1, TotalAgreementValue = 1500,  con1,con2 are realted contacts .
when con1 is updated  from AgreementStatus from in Request to approved which have a value of 1000 on IntialAgreementValue then update 
con1 - FinalAgreementValue to 1000 and update realted accounts  TotalAgreementValue to - 2500.*/
    public static void exptask4(list<contact>clist1){
        set<id> clistid=new set<id>();
        for(contact clist2:clist1){
            clistid.add(clist2.AccountId);
            if(clist2.Agreement_Status__c=='Approved' && clist2.Agreement_Status__c!=null){
                clist2.Final_Agreement_Value__c=clist2.Intial_Agreement_Value__c;
            }
        } //update clist1;
        map<id,decimal> map1=new map<id,decimal>();
        list<AggregateResult> clist3=[Select accountid,SUM(Final_Agreement_Value__c)tot from contact  group by accountid ];
        for(AggregateResult aglis:clist3){
            map1.put((ID)aglis.get('accountid'),(decimal)aglis.get('tot'));
        }
        list<account> acclist=[select id,Total_Agreement_Value__c from account where id in :clistid];
        for(account ac1: acclist){
            ac1.Total_Agreement_Value__c=map1.get(ac1.id);
        }
        update acclist;
    }/*trigger class: trigger contacttest on Contact (before insert,after insert,before update,after update,before delete,after delete) {
if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
triggertasks.exptask4(trigger.new);
}
}*/
    /*public static void task7(list<account>accList1){
Set<id> accIdSet = new Set<id>();  
for(Account acc : accList1)  
{  
accIdSet.add(acc.id);  
}  

Map<Id, Account> accts = new Map<Id, Account>([Select Id, (Select Id from contacts) from Account where id in :accIdSet]);

for(Account acc : accList1)
{
if(accts.get(acc.id).contacts.size()>0)
{
acc.adderror('Account cannot be deleted');
}
}    
}*/
    public static void task7(list<account> acList){
        set<id> setId = new set<id>();
        for(account ac : acList){
            setId.add(ac.Id);
            list<aggregateResult> aggRes = [SELECT COUNT(Id) NUM FROM Contact WHERE Account.Id In:setId];
            for(aggregateResult ar : aggRes){
                integer numOfContacts = (integer)ar.get('NUM');
                if(numOfContacts >=3){
                    ac.addError('Cant delete this record as it has 3 or more related contacts');
                }
            }
        }
        
    }
    /*Add a custom field called Min no of Contacts. Validate that this field should always be greater 
than or equal to 1. Automatically create Contact records when Account record is created. 
No of Contact records created should be equal to the value of Min No of Contacts field on Account*/
    public static void task8(list<account> acList1){
        list<contact> clist=new list<contact>();
        for(account acList2:acList1){
            contact newcnt=new contact();
            newcnt.LastName=acList2.name+'test';
            newcnt.AccountId=acList2.Id;
            clist.add(newcnt);
        }insert clist;
    }
    public static void task8sub(list<account> acclist){
        map<id,integer> map1=new  map<id,integer>();
        list<aggregateresult> aglist1=[select count(id)cid,accountid from contact group by accountid];
        for(aggregateresult aglist2:aglist1){
            map1.put((id)aglist2.get('accountid'),(integer)aglist2.get('cid'));
            system.debug(map1);
        }
        //acclist=[select id,minimum_number_of_contacts__c from account];
        for(account ac1: acclist){
            ac1.minimum_number_of_contacts__c=map1.get(ac1.Id);
        }
        //update acclist;
    }
    /*create a picklistfield called level__c on contact object which has three pick values called 
* 'Primary','secondary','tertiary'. Also create three fields noOfPrimaryContacts,noOfSecondaryContacts,
* noOfTertiaryContacts which are number data type. when there is a contact/list of contacts are inserted , 
* based on the level__c count the number of contacts that are primary,seconday,tertiary and update these values in 
* related account*/
    /*public static void task2(list<contact> clist, map<id,contact> maplist){
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
}*/
    public static void task14(list<contact> clist){
        set<id> idset=new set<id>();
        for(contact clist1:clist){
            idset.add(clist1.accountid);
        }
        integer a=[select count() from contact where level__c='Primary' and accountid in: idset];
        integer b=[select count() from contact where level__c='secondary' and accountid in: idset];
        integer c=[select count() from contact where level__c='tertiary' and accountid in: idset];
        list<account> accountList=[select Id,Name,number_of_primary_contacts__c,number_of_secondary_contacts__c	,number_of_Tertiary_contacts__c from account where Id in:idset];
        for(account acc:accountList){
            acc.number_of_primary_contacts__c=a;
            acc.number_of_secondary_contacts__c=b;
            acc.number_of_Tertiary_contacts__c=c;
        }
        update accountList;
    }
    /*"""Create 'Old Field Value' in Account & Contact object. Whenever Lead Source picklist is updated in contact, 
update the old field value and contact name into 'Old Field Value' field in account and contact object
Ex: Lead Source is changed from 'Web' to 'Other'
Old Field Value = 'contactName+Web'"*/
    
    public static void practiceTaskTwo3(list<contact> oldList,list<contact> newList){
        Set<Id> accIdSet = new Set<Id>();
        Map<id,contact> oldMap = new Map<id,contact>();
        Map<id,contact> newMap = new Map<id,contact>();
        
        for(Contact c : oldList)
        {
            if(String.isNotBlank(c.AccountId))
            {
                accIdSet.add(c.AccountId);
                oldMap.put(c.Id,c);
            }
        }
        for(contact c: newList){
            if(String.isNotBlank(c.AccountId))
            {
                newMap.put(c.Id,c);
            }
        }       
        Map<id,account> aMap = new Map<Id,Account>([select id,name,old_filed_value__c from account where id in:accIdSet]);
        list<account> toUpdate = new list<account>();
        for(contact con: newMap.values()){
            con.Old_Field_Value__c = con.LastName+':'+oldMap.get(con.Id).LeadSource;
            aMap.get(con.AccountId).old_filed_value__c = con.LastName+':'+oldMap.get(con.Id).LeadSource;
        }
        update aMap.values();
    }
    /*when an opportunity is 'closed won'. create a task for the opportunity */
    public static void task15(list<opportunity> opp1){
        for(opportunity opp2:opp1){
            if(opp2.StageName!=null && opp2.StageName=='closed won'){
                task newtask=new task();
                newtask.Subject='Other';
                newtask.Priority='High';
                newtask.Status='Not Started';
                newtask.Description='test case automate'+'=>'+opp2.name;
                insert newtask;
            } 
        }//update opp1;
    }
    /*create a total amount field on account. when an update happens on the amount field in opportunity records then 
the total amount in the related account must also change accordingly*/
    public static void task12(list<opportunity> opp1){
        set<id> oppaccid=new set<id>();
        for(opportunity opp2:opp1){
            if(opp2.AccountId!=null){
                oppaccid.add(opp2.AccountId);
            }
        }
        list<aggregateresult> ag1=[select sum(Amount) tot,accountid from opportunity where accountid in:oppaccid group by accountid];
        map<id,account> m1=new map<id,account>([select id,Total_opprtunity_Amount__c from account where id in:oppaccid]);
        for(aggregateresult ag2 : ag1){
            m1.get((string)ag2.get('accountid')).Total_opprtunity_Amount__c = (decimal)ag2.get('tot');
        }update m1.values();
    }
    /*when a case is closed then update the field on account object.
create a field on account object as lastClosedCaseNumber.*/
    public static void task13(/*list<case>calist*/){
        list<case>calist=new list<case>();
        calist=[select CaseNumber,ClosedDate from case where status='closed' order by closedDate desc limit 1];
        set<id> caseaccid=new set<id>();
        for(case calist1:calist){
            if(calist1.Status=='closed'){
                caseaccid.add(calist1.AccountId);
                system.debug(calist);
                map<string,string> m1=new map<string,string>();
                case c1=[select CaseNumber,ClosedDate from case where status='closed' and accountid in:caseaccid order by closedDate desc limit 1 ];
                list<account> acc=new list<account>();
                for(account acc1:acc){
                    m1.put((string)acc1.get('accountid'),(string)acc1.get('c1'));
                    system.debug(m1);
                }
            }
        }
    }
    public static void task14(list<account>acc){
        for(account ac:acc){
            ac.ShippingCity=ac.BillingCity;
            ac.ShippingState =ac.BillingState;
            ac.ShippingCountry=ac.BillingCountry;
        }
    }
    public static void task15(list<Antra_Employee__c>aem){
        for(Antra_Employee__c ae:aem){
            if(ae.On_Board_Mail_Sent__c==false){
                EmailTemplate et= [select Id,Subject,Description,HtmlValue,DeveloperName,Body from EmailTemplate where DeveloperName ='Birthday_Email_templete'];
                messaging.SingleEmailMessage obmail=new messaging.SingleEmailMessage();
                list<string> toaddress=new list<string>();
                toaddress.add(ae.Employee_Mail_Id__c);
                obmail.setToAddresses(toaddress);
                obmail.setSubject('Hello'+ae.First_name__c+'welcome to TechWish');
                string emailBody= messaging.renderStoredEmailTemplate(et.Id,ae.id,ae.Id).getHtmlBody(); 
                obmail.setHtmlBody(emailBody);
                obmail.setTemplateId(et.Id);
                messaging.sendEmail(new messaging.SingleEmailMessage[]{obmail});
                ae.On_Board_Mail_Sent__c=true;
            }
        }
    }
}