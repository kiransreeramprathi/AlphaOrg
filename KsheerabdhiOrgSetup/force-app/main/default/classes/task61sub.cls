public class task61sub 
{
public static void substring(string a)
{
    list<string> countrycapital=new list<string>{'INDIA-DELHI','USA-WASHINGTON','RUSSIA-MOSCOW','BANGLADESH-DHAKA'};
        for(integer i=0;i<countrycapital.size();i++)
    {
        string s=countrycapital[i];
        if(s.substringBefore('-')==a)
        {
            system.debug(s.substringAfter('-'));
        }
    }
}
}