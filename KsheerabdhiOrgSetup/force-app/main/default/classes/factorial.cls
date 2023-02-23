public class factorial 
{
public static void fact(Integer n)
{
    long a = 1;
    if (n < 0) {
        System.debug('No negative numbers');
    }
    else
    {
    for (Integer i = 1; i <= n; i++) {
        a*= i;
    }
    }
  System.debug(a);

    }
}