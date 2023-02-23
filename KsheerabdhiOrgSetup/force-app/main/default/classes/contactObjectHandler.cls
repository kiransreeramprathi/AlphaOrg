public class contactObjectHandler {
    public static void createContactRelationShipByContact(list<contact> con){
         List<Contact_Relationship__c> crlist = new List<Contact_Relationship__c>(); 
        for(Contact c:con){
            if(c.Contact_Relationship__c==true){
                Contact_Relationship__c cr=new Contact_Relationship__c();
                cr.Name=c.LastName+''+'contact Relationship';
                cr.Contact__c=c.Id;
                crlist.add(cr);
            }
        }insert crlist;
    }
    public static void conRelNameUpdate(list<Contact_Relationship__c> cr){
        
    }
}