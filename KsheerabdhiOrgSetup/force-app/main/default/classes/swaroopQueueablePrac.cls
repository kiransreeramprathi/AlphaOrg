public class swaroopQueueablePrac implements Queueable {
    public void execute(queueableContext qc){
        list<Contact> con=[select id,Account.Name,LastName  from contact where account.name='samsung'];
        for(contact co:con){
            co.LastName ='test 1';
        }
        update con;
    }
}