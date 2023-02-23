public class task65 
{
    public static void daysbtw()
    {
    date subscribitiondate=date.today();
    date subscribitionenddate=subscribitiondate.addYears(1);
    integer a=subscribitiondate.daysBetween(subscribitionenddate);
        system.debug('days remaining= '+a);
        date nextrechargedate=subscribitionenddate.addDays(1);
        string b=nextrechargedate.format();
        system.debug('next recharge date= '+b);
    }
}