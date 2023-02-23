public class livecod1222 
{
public static void task1(string a)
{
    list<account> acc1=[select Name from account where Industry=:a];
    for(account upacc:acc1)
    system.debug(upacc);
}
    public static void task2(string a,string b)
    {
        list<Opportunity> opl=new list<Opportunity>();
        opl=[select StageName,LeadSource,Name from Opportunity where LeadSource=:b and StageName=:a];
        for(Opportunity oplup:opl)
            system.debug(oplup.Name);
        //livecod1222.task2('Closed Won','web');
    }
    public static void task5(string s1)
    {
        list<Lead> l1=[select Name,id from lead where name=:s1];
        for(lead l2:l1)
        system.debug(l2);
        //livecod1222.task5('Mike Braund');
    }
    public static void task4()
    {
        list<case> casaelist=[select Status,AccountId from case limit 20];
        for(case casaelist1:casaelist)
            if(casaelist1.Status=='Escalated')
        {
            system.debug('the case is been escalated');
        }
        else if(casaelist1.Status=='Working')
        {
            system.debug('the case in progress');
        }
        else if(casaelist1.Status=='Closed')
        {
            system.debug('the case isclosed');
        }
    }
    public static void task3()
    {
        List<Account> lastMod = [SELECT Name,Phone,LastModifiedDate FROM Account LIMIT 1];
        system.debug(lastMod);
        Contact isCon = New Contact();
        for(Account acc:lastMod)
        {
            isCon.LastName =acc.Name;
            isCon.Phone =acc.Phone;
            
        }
    system.debug(isCon.LastName + ',' +isCon.Phone);
        insert isCon;
    }
}