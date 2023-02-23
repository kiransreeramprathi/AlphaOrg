public class accountHandler {
    public string accInputName{get;set;}
    public list<account> acc{get;set;}
    public void getRecords(){
        acc = [SELECT name,Industry,AnnualRevenue from account where name like : '%'+accInputName+'%'];
    }
}