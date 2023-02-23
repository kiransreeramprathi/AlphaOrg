public class swaroopSchedPrac implements schedulable{
    public void execute(schedulableContext scd){
        BatchInsert bi=new BatchInsert();
        database.executeBatch(bi);
    }

}