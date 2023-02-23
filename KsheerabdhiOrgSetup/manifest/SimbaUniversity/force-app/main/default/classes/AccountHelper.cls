public with sharing class AccountHelper {
    @AuraEnabled(cacheable = true)
    public static List<Account> getAccountList(){
        return[SELECT id,Name, Type,Rating,Phone,Website FROM Account];
    }
}