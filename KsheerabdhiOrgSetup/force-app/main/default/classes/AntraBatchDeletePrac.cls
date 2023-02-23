global class AntraBatchDeletePrac implements Database.Batchable<sObject>
{
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query='select id,Amount from Opportunity where Amount!=null';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,list<Opportunity> op1){
        system.debug(op1);
        for(Opportunity op:op1){
            op.Amount=op.Amount+1;
        }
        update op1;
    }
    global void finish(database.BatchableContext bc){
        
    }
}