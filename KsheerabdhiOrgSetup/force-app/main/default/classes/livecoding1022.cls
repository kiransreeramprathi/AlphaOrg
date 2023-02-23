public class livecoding1022 
{
public static void task4()
{
    date date1=date.newInstance(2021, 01, 10);
    date date2=date.newInstance(2022, 01, 10);
    integer result=date1.daysBetween(date2);
        system.debug('the days between two dates are= '+ result);
}
    public static void task5(string a,string b,string c,string d)
    {
        list<string> names=new list<string>();
        names.add(a);
        names.add(b);
        names.add(c);
        names.add(d);
        for(string str1:names)
        /*string x=a.toUpperCase();
        string y=b.toUpperCase();
        integer r1=a.length();
        integer r2=b.length();
        system.debug('lengths of '+x+r1+'and length of '+y+r2);*/
        system.debug(str1.touppercase()+str1.length());
        
    }
    public static void task1(string s1)
    {
        list<Opportunity> traillist=new list<Opportunity>();
        traillist=[select Name, AccountId from Opportunity Where AccountId=:'s1'];
        for(Opportunity tr1:traillist)
        system.debug(traillist);     
    }
    public static void task2()
    {
        list<contact> contlist=new list<contact>();
        contlist=[select LastModifiedDate,id from Contact order by LastModifiedDate desc limit 10];
            //system.debug(contra.Id);
        set<id> sencontra=new set<id>();{
        for(contact contra:contlist)
            sencontra.add(contra.id);
        }
            system.debug(sencontra);
    }
}