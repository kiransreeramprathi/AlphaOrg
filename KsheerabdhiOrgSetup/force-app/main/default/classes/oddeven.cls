public class oddeven 
{
    public static void evenodd (integer x)
    {
         integer y;
         integer z;
        y = x/2;
        
        z = y * 2;
        
        If(z == x) {System.Debug('Even');
                   }
        else System.Debug('Odd');
    }
    public static void oe(integer i)
    { 
if(math.mod(i, 2) == 0){
    system.debug('this is even: ' + i);
}else{
    system.debug('this is odd: ' + i);
}
    }
}