public class may193hand {
    public string inpaccname{get;set;}
    public list<Account> disptable{get;set;}
    public list<account> consquery;
    public may193hand(){
        consquery=[select Name,Phone,AnnualRevenue,Industry,(select Id,name,StageName,Amount from Opportunities) from Account];
    }
    public void beepboom(){
        disptable =new list<Account>();
        if(inpaccname!=''){
            for(Account acc:consquery){
                if(acc.name==inpaccname){
                    disptable.add(acc);
                }}}
        
    }
}