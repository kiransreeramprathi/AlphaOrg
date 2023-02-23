public class numberrnot 
{
    public static void check(string a)
    {
        boolean result=a.isNumeric();
        if(result==true){
            system.debug('entered input is '+a+'is number');
        }
        else
        {
            system.debug('entered input '+a+'is not number');
        }
    }

}