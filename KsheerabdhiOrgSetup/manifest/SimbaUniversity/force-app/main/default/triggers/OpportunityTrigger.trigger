trigger OpportunityTrigger on Opportunity (before insert,before update,before delete,after insert,after update) {
    if(trigger.isbefore && trigger.isinsert){
        //TriggerPracticeHandler.oppInsertMeth2(trigger.new);
    }
    if(trigger.isAfter && trigger.isUpdate){
        TriggerPracticeHandler.oppWon(trigger.new);
    }
}