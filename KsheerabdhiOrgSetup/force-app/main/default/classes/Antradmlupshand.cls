public class Antradmlupshand {
    public string ipname{get;set;}
    public string name{get;set;}
    public string Phones{get;set;}
    list<account> acc;
    
    public void search()
    {
        integer cut=[select count()  from Account where Name=:ipname];
        system.debug(cut);
        if(cut>=1){
            acc=[select Name,AccountNumber from Account where Name=:ipname];
            for(account acc1:acc){
                name=acc1.Name;
                Phones=acc1.AccountNumber;
            }
        }
    }
    public void method2(){

        for(Account acc1:acc){
            acc1.AccountNumber=Phones;
            acc1.Name=name;
            contact con=new contact();
            con.AccountId=acc1.Id;
            con.LastName=acc1.Name+''+'VF Upsert';
            upsert acc1;
            upsert con;
        }
        
    }
    public static void method3(){
        list<account> acclist=[select name,BillingCity from account where BillingCity =null ];
        for(account acc:acclist){
            acc.BillingCity='Hyderabad';
        }
        Account ac1=new account();
        ac1.name='JAWA';
        ac1.BillingCity='Kukatpally';
        acclist.add(ac1);
        upsert acclist;
    }
}