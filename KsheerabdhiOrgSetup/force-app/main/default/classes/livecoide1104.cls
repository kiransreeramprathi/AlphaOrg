public class livecoide1104 {
/*Take an input N of integer type. Based on the input get N no of Contacts. 
From the Contacts returned in the query update the respective Account name with number of Contacts it is has. 
Ex: Account Name 3*/
    public static void method1(list<Account> acc){
        list<contact> conlist=new list<contact>();
        for(account acc1:acc){
            if(acc1.Id!=null && acc1.number_of_contacts_to_be_created__c!=null){
                for(integer i=0;i<acc1.number_of_contacts_to_be_created__c;i++){
                    contact newcon=new contact();
                    newcon.AccountId=acc1.id;
                    newcon.LastName=acc1.name+1;
                    conlist.add(newcon);
                }
                if(!conlist.isempty())
                    insert conlist;
            }
        }
    }
    /*Take a list of account as input.Fetch all the contacts associated with those accounts and update 
     * contacts HomePhone as Account phone Points to remember: *use map to avoid nested for loops 
*use list for Bulk DML Operations to avoid dml inside for loop*/
    public static void method2(){
        list<contact> con=new list<contact>();
        list<account> acc=new list<account>();
        set<id>conaccid=new set<id>();
        for(contact con1:con){
            if(string.isNotBlank(con1.accountid)){
                conaccid.add(con1.accountid);
            }
        }
        map<id,account> accmap=new map<id,account>();
        for(contact con2:con){
            account ac=accmap.get(con2.accountid);
            if(ac!=null){
                con2.MobilePhone=ac.Phone;
                acc.add(ac);
            }
        }
        update con;
     }
}