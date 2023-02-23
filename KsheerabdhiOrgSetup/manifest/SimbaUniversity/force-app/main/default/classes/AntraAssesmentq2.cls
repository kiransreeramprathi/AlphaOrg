public class AntraAssesmentq2 implements database.Batchable<sobject>
{
    public database.QueryLocator start(database.BatchableContext bc){
        string query='select id,Name,Status__c,Employee_Salary__c  from Antra_Employees__c ';
        return database.getQueryLocator(query);
    }
    public void execute(database.BatchableContext bc,list<Antra_Employees__c>emp){
        list<Antra_Employees__c> selectlist=new list<Antra_Employees__c>();
       // list<Antra_Employees__c> unselectlist=new list<Antra_Employees__c>();
        for(Antra_Employees__c em:emp){
            if(em.Employee_Salary__c>25000){
                delete em;
            }else{
                em.Status__c='Not Selected';
                selectlist.add(em);
            }
            update selectlist;
        }
    }
    public void finish(database.BatchableContext bc){
        
    }
}