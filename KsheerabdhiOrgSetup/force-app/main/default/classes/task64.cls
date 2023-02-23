public class task64 
{
public static void format()
{
    date date1=date.today();
    system.debug('date before conversion '+date1);
    string date2=date1.format();
    system.debug('date after conversion '+date2);
}
}