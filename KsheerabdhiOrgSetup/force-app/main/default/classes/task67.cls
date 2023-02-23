public class task67 
{
    public static void currentdt()
    {
        TimeZone tz = UserInfo.getTimeZone();
        //system.debug(tz);
        DateTime dt = Datetime.now();
        //system.debug(dt);
        system.debug('Actual date and Time as String is ' + dt.format());
        //system.debug('Offset ' + tz.getOffset(dt)/1000);
        //system.debug('Formatted Time ' + dt.addSeconds((tz.getOffset(dt)/1000)));
    }
}