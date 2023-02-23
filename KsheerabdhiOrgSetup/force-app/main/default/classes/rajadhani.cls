public class rajadhani 
{
    public static void rajadhanis(string a)
    {
        list<string> country= new list<string>();
        country.add('INDIA');//0
        country.add('USA');//1
        country.add('JAPAN');//2
        country.add('RUSSIA');//3
        country.add('CHINA');//4
        {
            list<string> capital= new list<string>();
            capital.add('new delhi');//0
            capital.add('washington');//1
            capital.add('tokyo');//2
            capital.add('beijing');//4
            capital.add('moscow');//3
            if(a==country.get(0))
            {
                system.debug(capital.get(0));
            }
            if(a==country.get(1))
            {
                system.debug(capital.get(1));
            }
            if(a==country.get(2))
            {
                system.debug(capital.get(2));
            }
            if(a==country.get(3))
            {
                system.debug(capital.get(4));
            }
            if(a==country.get(4))
            {
                system.debug(capital.get(3));
            }
        }
    }
}