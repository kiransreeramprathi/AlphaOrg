public class task66 
{
public static void samedate()
{
    date admissiondate=date.today();
    date d1=date.newInstance(2021,05,20);
    if(d1>admissiondate||d1<admissiondate)
    {
        system.debug('date entered is not same ');
    }
    else{
        system.debug('entered date is same');
    }
    
}
}