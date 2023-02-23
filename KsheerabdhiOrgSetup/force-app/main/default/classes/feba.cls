public class feba 
{
    public static void naci(integer num)
    {
        string name = 'Fibonacci series';
        integer a=0;
        integer b=1;
        integer c;
        for(integer i=0;i<num;i++)
        {
         c=a;
            a=a+b;
            b=c;
            name=name+' '+string.valueof(c);
        }
        system.debug(name);
    }    
}