trigger acctrigger on Account (before insert,after insert,before update,after update,before delete,after delete) {
   /*if(trigger.isbefore && (trigger.isupdate)){
        triggertasks.task4(trigger.new);
        triggerlivecoding24.task3(trigger.new);
    }if(trigger.isbefore && (trigger.isdelete)){
        triggertasks.task7(trigger.old);
    }if(trigger.isafter && triggertasks.runonce && (trigger.isinsert || trigger.isupdate)){
        triggertasks.runonce=false;
        triggertasks.task8(trigger.new);
    }if(trigger.isbefore && triggertasks.runonce && (trigger.isinsert || trigger.isupdate)){
        triggertasks.runonce=false;
        triggertasks.task8sub(trigger.new);
    }
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        venudemo.ttask1(trigger.new);
    }
    if(trigger.isafter && trigger.isinsert){
         //venudemo.ttask2(trigger.new);
    }
    if(trigger.isafter && trigger.isinsert){
        livecoide1104.method1(trigger.new);
    }
    if(trigger.isbefore && trigger.isinsert){
       // AccounTriggerHandler.autoUpdateSalesrep(trigger.new);
    }
    if(trigger.isbefore && trigger.isupdate){
        //AccounTriggerHandler.autoUpdateSalesrep(trigger.new);
    }
    if(trigger.isafter && (trigger.isupdate || trigger.isinsert)){
        AccounTriggerHandler.method1(trigger.new);
    }*/
    if(trigger.isbefore && trigger.isupdate){
        triggertasks.task14(trigger.new);
    }
}