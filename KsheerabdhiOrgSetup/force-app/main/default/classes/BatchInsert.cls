global class BatchInsert implements database.Batchable<sobject>
{
    global  database.QueryLocator start(database.BatchableContext bc){
        string query='select name,BillingCity,AccountNumber from Account where BillingCity=\'London\'';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext bc,list<Account> scope){
        delete scope;        
    }
    global void finish(database.BatchableContext bc){        
    }
}