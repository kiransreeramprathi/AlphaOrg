public class task68 
{
public static void db()
{
        date GivenDate = date.newInstance(2022, 01, 02);
        date CurrentDate = date.today();
    boolean a;
    boolean b;
    boolean c;
a = CurrentDate>=GivenDate;
        system.debug(a);
b = CurrentDate<=GivenDate;
        system.debug(b);
c=currentdate.isSameDay(GivenDate);
system.debug(c);
}
}