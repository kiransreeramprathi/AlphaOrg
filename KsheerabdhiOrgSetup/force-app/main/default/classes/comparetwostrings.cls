public class comparetwostrings 
{
    public static void grater(string a, string b)
    {
        integer length1 = a.length();
        integer length2 = b.length();
        system.debug('length of 1st string '+a+'='+length1);
        system.debug('length of 2nd string '+b+'='+length2);
        
        if(length1>length2){
                system.debug('the length of '+a+'='+length1);
        }
                else
                    system.debug('the length of '+b+'='+length2);
            
        }
}