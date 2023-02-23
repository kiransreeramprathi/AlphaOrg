public class account_handler {
    public string input1{get;set;}
    public string input2{get;set;}
    public string input3{get;set;}
    public account acc{get;set;}
    public list<account> acc2{get;set;}
    public contact con{get;set;}
    public void submit(){
        acc=new account();
        acc.Name=input1;
        acc.Phone=input2;
        insert acc;
        con=new contact();
        con.accountid=acc.id;
        con.LastName=input1;
        con.Phone=input2;
        insert con;
    }
    public account_handler(){
        
    }
    public void Displayrecords(){
        acc2=[select name,industry,AnnualRevenue from account where name like :'%'+ input3 +'%'   ];
    }
}