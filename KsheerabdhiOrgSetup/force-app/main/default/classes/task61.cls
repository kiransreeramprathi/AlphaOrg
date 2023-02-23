public class task61 
{
    public static void task61prac(list<string> inputcountries)
    {
        list<string> country=new list<string>{'india','srilanka','bangladesh','pakistan','nepal','usa'};
            list<string> capital=new list<string>{'delhi','colombo','dhaka','islamabad','katmandu','washington'};
                map<string,string> rajadhani=new map<string,string>();
        for(integer i=0;i<country.size();i++)
        {
            rajadhani.put(country[i],capital[i]);
        }
        list<string> outputcapitals=new list<string>();
        for(string keycountry:inputcountries)
        {
            if(rajadhani.containskey(keycountry))
            {
                string tempcapital=rajadhani.get(keycountry);
                outputcapitals.add(tempcapital);
            }
            else{
                outputcapitals.add(null);
            }
        }
        system.debug(outputcapitals);
    }
}