trigger AccountTrigger on Account (before insert,after insert,before update,after update) {
    TriggerPracticeHandler tp = new TriggerPracticeHandler();
    if(trigger.isinsert && trigger.isbefore){
        //TriggerPracticeHandler.accInsertMeth1(trigger.new);
        //TriggerPracticeHandler.accErrorMeth1(trigger.new);
        //TriggerPracticeHandler.avoidAccDupli(trigger.new);
    }
    if(trigger.isUpdate && trigger.isBefore){
        //TriggerPracticeHandler.avoidAccDupli(trigger.new);
    }
    if(trigger.isinsert && trigger.isAfter){
        tp.insertConOpp(trigger.new);
    }
    if(trigger.isupdate && trigger.isAfter){
        TriggerPracticeHandler.updateConMailDetails(trigger.new);
    }
}