trigger contactobject on Contact (before insert,after insert,before update,after update,before delete,after delete) {
    if(trigger.isbefore && trigger.isinsert){
        contactObjectHandler.createContactRelationShipByContact(trigger.new);
    }
    if(trigger.isbefore && trigger.isupdate){
        contactObjectHandler.createContactRelationShipByContact(trigger.new);
    }
}