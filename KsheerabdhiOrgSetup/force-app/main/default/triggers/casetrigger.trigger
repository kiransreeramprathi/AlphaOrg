trigger casetrigger on Case (before insert,after insert,before update, after update,before delete,after delete) {
    if(trigger.isafter && trigger.isupdate){
        //livecodingfeb1.task1(trigger.new);
    }
    if(trigger.isafter && (trigger.isupdate ||trigger.isinsert || trigger.isdelete )){
        livecode1404.task1(trigger.new);
    }
}