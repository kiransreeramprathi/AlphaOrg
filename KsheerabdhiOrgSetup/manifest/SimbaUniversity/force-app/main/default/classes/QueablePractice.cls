public class QueablePractice implements Queueable{
public void execute(QueueableContext context) {
    list<account> accList = [select id,name from account where Name like '%Mars Origin%'];
    delete accList;
    }
}