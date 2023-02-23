trigger opptrigger on Opportunity (before insert,after insert,before update,after update,before delete,after delete) 
{
    /*if(trigger.isbefore && trigger.isupdate){
        livecoding18.task3(trigger.new);
    }
    if(trigger.isafter && (trigger.isupdate|| trigger.isinsert)){
        triggertasks.oppup(trigger.new);
    }*/
    if(trigger.isafter && trigger.isupdate){
        //triggertasks.Practice3(trigger.new);
        //triggerlivecoding24.task2(trigger.new);
    }
    if(trigger.isafter && trigger.isupdate){
        //triggertasks.task15(trigger.new);
    }
    if(trigger.isafter && (trigger.isinsert || trigger.isupdate)){
        //triggertasks.task12(trigger.new);
    }
    if(trigger.isafter && (trigger.isinsert || trigger.isupdate || trigger.isdelete)){
       // livecoding0202.task1(trigger.new);
       }
    if(trigger.isafter && (trigger.isinsert || trigger.isupdate)){
        //livecode080422.method1(trigger.new);
       }
}