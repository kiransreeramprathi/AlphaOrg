public class livecoding18 
{
    public static void task1(string accname,string leadsource,string oppstage)
    {
        list<account> acclist=[select name,type,(select Name,LeadSource,StageName from Opportunities where LeadSource=:leadsource and StageName=:oppstage ),(select Name from contacts where Name=:accname ) from Account where name=:accname ];
        for (account a1:acclist)
        {
            system.debug(a1);
        }
    }
    public static void task4()
    {
        list<asset> asset1=[select name,ContactId,PurchaseDate from asset];
        for(asset a1:asset1)
            //date d1=system.today();
        if(a1.PurchaseDate==system.today())
        {
            a1.Status='Purchased';
            update a1;
        }
        else if(a1.PurchaseDate<system.today())
        {
            a1.Status='installed';
            update a1;
        } 
    }
public static void task5()
{
    list<account> acc1=[select name,Description,AccountSource from account limit 5];
    for (account acc2:acc1)
        system.debug(acc2);
}
    public static void task3(list<Opportunity> opp1)
    {
        //list<Opportunity> opp1=[select StageName,LeadSource,Name,Description from Opportunity limit 40 ];
        for(Opportunity opp2:opp1)
            if (opp2.StageName=='Closed Won' && opp2.LeadSource=='Web')
        {
         opp2.Description='the oppurtunity is combination of stage value proposition and lead source is web';
            //update opp2;
            //system.debug(opp2);
            }
       else if (opp2.StageName=='Prospecting' && opp2.LeadSource=='Web')
        {
         opp2.Description='the oppurtunity is combination of stage Prospecting and lead source is web';
            //update opp2;
            //system.debug(opp2);
    }
}
}