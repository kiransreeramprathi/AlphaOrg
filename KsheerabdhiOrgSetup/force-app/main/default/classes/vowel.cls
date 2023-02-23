public class vowel 
{
    public static void check(string n)
    {
        string a='a';
        string e='e';
        string i='i';
        string o='o';
        string u='u';
     string out=a.toLowerCase();
       if(n==a||n==e||n==i||n==o||n==u)
       {
           system.debug('entered character'+a+ 'is vowel');
       }
        else
        {
            system.debug('entered character'+a+ 'is not vowel');
        }
       }
    }