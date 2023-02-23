public class venutrail 
{
    public static void trail1(){
        /*list<account> acc=new list<account>();
        acc=[select name,industry from account where industry='Energy'];
        for(account acc1:acc)
        system.debug(acc1.id);*/
        list<account>acc=new  list<account>();
            integer a=[select count() from account where name like 'u%'];
        acc=[select name,industry from account where name like 'u%'];
        for(account acc1:acc){
        system.debug(a);
        system.debug(acc1.name);
    }
}
    public static void lvcode1(string a){
        //parent to child
       /* list<account> acc=[select name,industry,(select Name,StageName from Opportunities) from account where name=:a];
        for(account acc1:acc)
            system.debug(acc1);*/
        //child to parent
        list<Opportunity> opp1=[select name,StageName,account.name from Opportunity where account.name=:a ];
        for(Opportunity opp2:opp1)
            system.debug(opp2);
        
    }
    public static void lvcode2(){
        //date d1=date.today();
        list<contact> cc1=[select Name,Phone,LastModifiedDate from contact order by LastModifiedDate desc limit 10];
        for(contact cc2:cc1)
            system.debug(cc2);
    }
    public static void lvcode3(){
        date d1=date.today();
        date d2=date.newInstance(2021, 01, 01);
        integer x=d2.daysBetween(d1);
        system.debug(x);
        
    }
    public static void lvcode4(){
        list<string> slist=new list<string>();
        slist.add('salesforce1');
        slist.add('salesforce2');
        slist.add('salesforce3');
        slist.add('salesforce4');
        for(string slist1:slist){
            system.debug(slist1.touppercase());
        system.debug(slist1.length());
        }
    }
   /* "retrive list of case records from datebase limit 20 . based on their Priority change their subject value .
 if Status  = Escalated then update their subject as ""the case has been escalated""
 if Status  = New then update thier subject as ""the case has been created recently""
 if Status = Working then update thier subject as ""the case is in working status"""*/
    public static void lvcode5(){
        list<case> cs1=[select account.name,Status,Subject from case];
        for(case cs2:cs1){
            //system.debug(cs2);
            if(cs2.Status=='Escalated'){
                cs2.Subject='the case has been escalated';
            }if(cs2.Status=='New'){
                 cs2.Subject='the case has been created recently';
            }if(cs2.Status=='Working'){
                 cs2.Subject='the case is in working status';
            }else{
                cs2.Subject=cs2.Subject;
            }
        }
        update cs1;
    }
}