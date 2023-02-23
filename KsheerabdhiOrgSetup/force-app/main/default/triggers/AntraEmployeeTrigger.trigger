trigger AntraEmployeeTrigger on Antra_Employee__c (before insert,before update,after insert) {
    if(trigger.isbefore && trigger.isinsert){
        triggertasks.task15(trigger.new);
    }
}