public class soqltask3 
{
    public static void task23(string a)
    {
list<string> andhra=new list<string>{'vijayawada','guntur','vizag','kurnool','chittor'};
    list<string> telengana=new list<string>{'hyderabad','karimanagar','manchiryala','warangal','khammam'};
        map<string,string> stateandcity=new map<string,string>();
        for(string andhra1:andhra)
        {
            stateandcity.put(andhra1,'andhra pradesh'); 
        }
         for(string telengana1:telengana)
        {
            stateandcity.put(telengana1,'Telengana'); 
        }
        system.debug(stateandcity.get(a));
}
    public static void task22(integer input1,string input2)
    {
        list<account> acc1=new list<account>();
        
    }
}