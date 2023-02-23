public class AntraAssemennt2q2 implements schedulable{
    public void execute(SchedulableContext sb){
        AntraAssesmentq2 ae=new AntraAssesmentq2();
        database.executeBatch(ae);
    }
}