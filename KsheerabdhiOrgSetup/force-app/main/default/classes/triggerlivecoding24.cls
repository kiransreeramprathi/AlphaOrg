public class triggerlivecoding24 {
    /*Create a contact with name '<yourName>+<today date>' , mobile '<your mobile no>', email'<your email>' and save.
Create another contact with the same email as above, your contact record should not be saved and an error message 
should be displayed as 'Duplicate email'.*/
    public static void task1(list<contact>conList){
        set<string> setofmails=new set<string>();
        list<contact> listofmails=[select name,Accountid,Email from contact];
        for(contact conList1:listofmails){
            setofmails.add(conList1.Email);
        }
        for (contact clist:conList){
            if(setofmails.contains(clist.Email)){
                clist.Email.addError('kindly enter uniqe email id');
            }
        }
        /* trigger class: if(trigger.isbefore){
triggerlivecoding24.task1(trigger.new);*/
    }
    /*In Account Object,When industry picklist is 'Energy' and type picklist is 'Prospect', dont save the record and throw and 
error message """"You can't save an account based on this Combination.Do this using trigger adderror method"""*/
    public static void task3(list <account> acclist){
        //acclist=[select name,type,industry from account];
        for(account acclist1:acclist){
            if(acclist1.industry=='Energy' && acclist1.type=='Prospect'){
                acclist1.industry.addError('You cant save an account based on this Combination');
            }
        }//update acclist;
        /*trigger class on account:if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
triggerlivecoding24.task3(trigger.new);*/
    }
    /*write a trigger which will update RevenueGenerated field( in account create a currency field) with the sum of amount field values 
in related opportunities.Only when an list of opportunities related to that account is updated to closed won.
consider the existing opportunities also for an account*/
    public static void task2(list<Opportunity> opplist1){
        opplist1=[select name,Accountid from Opportunity];
        set<id> setoppid=new set<id>();
        for(Opportunity opplist2:opplist1){
            setoppid.add(opplist2.Accountid);
        }
        map<id,decimal> map1=new  map<id,decimal>();
        list<aggregateresult> oppamountcount=[select sum(amount) total,accountid from Opportunity group by accountid];
        for(aggregateresult agg1:oppamountcount){
            map1.put((id)agg1.get('accountid'),(decimal)agg1.get('total'));
        }
        list <account> acclistnew=[select id,RevenueGenerated__c from account where id in :setoppid];
        for(account acc:acclistnew){
            acc.RevenueGenerated__c=map1.get(acc.id);
        }
        update acclistnew;
        /* trigger class:trigger trigger1trail on Opportunity (before insert,after insert,before update,after update) 
{

if(trigger.isafter && (trigger.isupdate || trigger.isinsert)){
//triggertasks.Practice3(trigger.new);
triggerlivecoding24.task2(trigger.new);
    }
}*/
}
}