global class antraAssesment3SpoonWrapper {
    private integer id;
    private string title;
    private decimal price;
    private nutrition nutrition;
    
    public void setid(integer id){
        this.id=id;
    }
    public integer getid(){
        return id;
    }
    public void settitle(string title){
        this.title=title;
    }
    public string gettitle(){
        return title;
    }
    public void setprice(decimal price){
        this.price=price;
    }
    public decimal getprice(){
        return price;
    }
    public void setnutrition(nutrition nutrition){
        this.nutrition=nutrition;
    }
    public nutrition getnutrition(){
        return nutrition;
    }
}