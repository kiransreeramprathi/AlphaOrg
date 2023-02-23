public class AntraQueeablePrac implements Queueable {
    public list<contact> conlist;
    public AntraQueeablePrac(list<contact>conlist){
        this.conlist=conlist;
    }
    public void execute(QueueableContext Context){
        for(contact con:conlist){
            con.LastName=con.LastName+''+'Tron Service';
        }
        update conlist;
}
}