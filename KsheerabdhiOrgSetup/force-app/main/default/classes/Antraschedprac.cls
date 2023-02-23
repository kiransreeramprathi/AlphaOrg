public class Antraschedprac implements schedulable{
    public void execute(schedulableContext cs){
       AntraBatchprac b = new AntraBatchprac();
      database.executebatch(b);
    }
}