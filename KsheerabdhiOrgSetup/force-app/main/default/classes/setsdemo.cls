public class setsdemo 
{
    public static void mapdemo(string key)
    {
map<string,string> capitals=new map<string,string>();
        capitals.put('india','delhi');
        capitals.put('bangaldesh','dhaka');
        capitals.put('usa','washington');
        capitals.put('pakistan','islamabad');
        if(capitals.containskey(key))
        {
            system.debug(capitals.get(key));
        }
    }
    }