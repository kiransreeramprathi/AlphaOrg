public class dec1402vf{
    public string input1{get;set;}
    public string input2{get;set;}
    public account acc{get;set;}
    public void submit(){
        acc=new account();
        acc.name=input1;
        acc.Phone=input2;
    }
}