public class swaroopFutureprac2 {
    @future
    public static void insoppcon(string a,string b){
        contact con=new contact();
        con.LastName=a+' '+'contact';
        con.AccountId=b;
        insert con;
        opportunity opp=new opportunity();
        opp.Name=a+' '+'opportunity';
        opp.AccountId=b;
        opp.CloseDate=date.today()+30;
        opp.StageName='Prospecting';
        insert opp;
    }

}