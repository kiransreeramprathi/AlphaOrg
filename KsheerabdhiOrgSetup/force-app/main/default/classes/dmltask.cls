public class dmltask 
{
public static void dml15()
    {
        integer x=1;
        list<account> acclist=[select name,NumberOfEmployees,Industry from account where Industry='Energy'];
        for(account a1:acclist){
            a1.NumberOfEmployees=a1.NumberOfEmployees+1;
            //acclist.add(a1);
            update a1;
        }
            }
}