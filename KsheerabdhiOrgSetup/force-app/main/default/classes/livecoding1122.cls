public class livecoding1122 
{
    //parent to child
public static void task1(string sname)
{
    list<Account> acc1=new list<Account>();
    acc1=[select name,(select AccountId,Status,ContactId from Cases) from Account where name=:sname];
    if(!acc1.isempty())
    for(Account accou:acc1)
    {
        system.debug(accou.cases);
    }
    else
    {
        system.debug('no data found');
    }
}
    //child to parent
 public static void task11(string sname)
{
    list<case> acc1=new list<case>();
    acc1=[select CaseNumber,Account.name from case where Account.Name=:sname];
    if(!acc1.isempty())
    for(case accou:acc1)
    {
        system.debug(accou);
    }
    else
    {
        system.debug('no data found');
    }
}
    public static void task2(string str2)
    {
       list<Account> acc1=new list<Account>();
    acc1=[select Name,(select AccountId,CleanStatus from Contacts)from Account where Name=:str2];
    if(!acc1.isempty())
    for(Account accou:acc1)
    {
        system.debug(accou);
    }
    else
    {
        system.debug('no data found');
    }
    }
    public static void task3()
    {
     list<account> con3=new list<account>();
        con3=[select name,(select AccountId,Name from contacts) from account limit 10];
        for(account conup:con3)
            system.debug(conup);
    }
    public static void task4(date d1)
    {
        //date d1=date.today();
        list<lead> leads1=new list<lead>();
        leads1=[select Name from Lead where CreatedDate<=:d1];
        for(lead leli:leads1)
            system.debug(leli);
        /*annwindow code:
         * livecoding1122.task4(date.newInstance(2022, 01, 13));*/
    }
    public static void task5(integer a, date d1)
    {
        date d2=d1.addDays(a);
        system.debug(d2);
        
    }
}