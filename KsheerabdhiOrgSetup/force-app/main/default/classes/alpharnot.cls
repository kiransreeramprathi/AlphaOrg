public class alpharnot 
{
    public static void check(string a)
    {
        boolean result=a.isAlpha();
        if(result==true){
            system.debug('entered input is '+a+'are alphabets');
        }
        else
        {
            system.debug('entered input '+a+'are not alphabets');
        }
    }

}