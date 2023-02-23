public class nutrients {
    private string name;
    private decimal amount;
    private string unit;
    private decimal percentOfDailyNeeds;
    
    public void setname(string name){
        this.name=name;
    }
    public string getname(){
        return name;
    }
    public void setamount(decimal amount){
        this.amount=amount;
    }
    public decimal getamount(){
        return amount;
    }
    public void setunit(string unit){
        this.unit=unit;
    }
    public string getunit(){
        return unit;
    }
    public void setpercentOfDailyNeeds(decimal percentOfDailyNeeds){
        this.percentOfDailyNeeds=percentOfDailyNeeds;
    }
    public decimal getpercentOfDailyNeeds(){
        return percentOfDailyNeeds;
    }
}