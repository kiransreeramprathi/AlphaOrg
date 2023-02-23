public class BatchPractice implements database.Batchable <sObject>,Database.Stateful{
Public integer recordCount = 0;
    public database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator([select id, Name from opportunity]);
    }
    public void execute(database.BatchableContext bc, list<opportunity> opps){
        for(opportunity op:opps){
            op.LeadSource = 'Other';
        }
        Update opps;
        recordCount = recordCount + opps.size();
    }
    public void finish (database.BatchableContext bc){
        system.debug('Total records processed '+recordCount);
    }
    /*BatchPractice bp = new BatchPractice();
Id batchId = database.executeBatch(bp,10);
system.debug('batchId '+batchId);*/
}