public class datesort 
{
public static void dsorting()
{
    list<date> expdate=new list<date>();
    expdate.add(date.newInstance(2021,12,21));
    expdate.add(date.newInstance(2020,12,21));
    expdate.add(date.newInstance(2022,12,21));
    expdate.add(date.newInstance(2019,12,21));
    expdate.add(date.newInstance(2019,11,21));
    system.debug('added dates '+expdate);
    expdate.sort();
    system.debug('sorted dates '+expdate);
    set<date> expdateup=new set<date>();
    expdateup.addall(expdate);
    system.debug('sorted set '+expdateup);
}
}