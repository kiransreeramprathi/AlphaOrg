public class DynamicPickListClass {
@auraEnabled
    public static list<string> getAccRecords(){
        list<account> acc=[select AccountNumber from Account];
        list<string> ls=new list<string>();
        for(account a:acc){
            ls.add(a.AccountNumber);
        }
        return ls;
    } 
    @auraEnabled
    public static list<Account> getARecords(string accnumner){
        list<account> lac=[select AccountNumber,Name,Phone,Industry,Website from Account where AccountNumber=:accnumner];
        return lac;
    } 
}