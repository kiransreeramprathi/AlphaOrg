public class livecoding13 
{
public static void task5(string a)
{
    list<string> state=new list<string>{'vijayawada-Andhrapradesh','guntur-Andhrapradesh','banglore-karnataka','coorg-karnataka'};
        for(integer i=0;i<state.size();i++)
    {
        string s=state[i];
        if(s.substringBefore('-')==a)
        {
            system.debug('for entered city the state is '+s.substringAfter('-'));
        }
        else
        {
            system.debug('cant found the data');
        }
    }
}
    public static void task2(string str1)
    {
        list<contact> acc1=new list<contact>();
            acc1=[select Name,account.name,account.phone,phone from contact where Name=:str1 ];
      for(contact c2:acc1)
        system.debug(c2);
        // annonymous code=livecoding13.task2('Pat Stumuller');
    }
    public static void task3()
    {
        list<contact> cclist=[select Name,account.name,account.phone from contact];
        system.debug(cclist);
        contact cnew=new contact();
        /*for(Account ccl1:cclist)
            cnew.LastName=ccl1.Name;
        system.debug( cnew.LastName);*/
    }
    public static void task1(integer a,integer b,string c)
    {
       if (c=='add')
       {
           integer a1;
           a1=a+b;
           system.debug(a1);
       }
         else if(c=='sub')
       {
           integer a2;
           a2=a-b;
           system.debug(a2);
       }
        else if(c=='div')
       {
           integer a3;
           a3=a-b;
           system.debug(a3);
    }
}
}