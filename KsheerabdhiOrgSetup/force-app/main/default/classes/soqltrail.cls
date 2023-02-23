public class soqltrail 
{
    public  void trail()
    {
        list<Account> acclist= new list<Account>();
        acclist=[select name,phone,type,AnnualRevenue,Industry from Account where type = 'Customer - Direct' and AnnualRevenue=null and Industry in ('Apparel','Energy','Consulting')];
        for (Account acc:acclist)
            system.debug(acc.Type+acc.Name+acc.AnnualRevenue+acc.Industry);
    }
    public static void settask()
    {
        list<AggregateResult> acclist = new list<AggregateResult>();
        acclist = [SELECT Industry from Account GROUP by Industry ];
        for( AggregateResult acc :acclist)
        {
            system.debug(acc);
        }
    }
    public static void soqlcount(){
        integer a;
        list<Account> acclist= new list<Account>();
        a=[select count() from Account where industry in('Apparel', 'Consulting', 'Energy', 'Hospitality')];
        for(Account acc:acclist)
            system.debug(acc);
        system.debug(a);
    }
    public static void mapsoql()
    {
        list<Account> acc=new list<Account>();
        list<AggregateResult> aggresult=[select industry,count(id) NUM from account group by Industry];
        map<string,integer> industrycount=new Map<string,integer>();
        for(AggregateResult a:aggresult)
        {
            industrycount.put((string)a.get('industry'),(integer)a.get('NUM'));
        }
        system.debug(industrycount);
    }
    public static void task7()
    {
        list<Account> acc=new list<Account>();
        acc=[select name,industry from Account where industry='Energy' limit 2];
        for(Account a:acc)
            system.debug(a);    
    }
    public static void task8()
    {
        list<Account> acc=new list<Account>();
        acc=[select name,industry from Account where name like 's%'];
        for(Account a:acc)
            system.debug(a);
    }
    public static void task9()
    {
        list<Account> acc=new list<Account>();
        acc=[select name,industry from Account where name like '%s'];
        for(Account a:acc)
            system.debug(a);  
    }
    public static void task10()
    {
        list<Account> acc=new list<Account>();
        acc=[select name,industry,annualrevenue from Account where annualrevenue>5000000 ];
        for(Account alist:acc)
            system.debug(alist.Name+'==>'+alist.AnnualRevenue); 
    }
    public static void dml1(string a)
    {
        //list<account>acc=new list<Account>();
        account acc=new account(name=a);
        insert acc;
    }
    public static void dml2()
    {
        account acc=new account(name='rrr estate');
        insert acc;
        system.debug(acc.Id);
    }
    public static void dml3()
    {
        list<account>acc=new list<Account>();
        account acc1=new account(name='trail estate');
        insert acc;
    }
    public static void swcon(integer a, integer b, string output)
    {
        switch on output {
            when 'add' {
                System.Debug('addition=>'+(a+b));
            }when 'substract' {
                System.Debug('substraction=>'+(a-b));
            }when 'div' {
                System.Debug('division=>'+(a/b));
            }
        }
    }
    public static void task22()
    {
        list<account> acc1=[select industry,name,phone,(select name from opportunities ),(select name from contacts) from account];
        for(account acc2:acc1)
        {
            system.debug(acc2.opportunities);
            system.debug(acc2.contacts);
        }
    }
    //Create a method which will accept X no as parameter and create those many Account records. Use any field values
    public static void dml12()
    {
        account acc=new account(Name='company');
        insert acc;
    }
    //Create a method which will accept X no as parameter and create those many Account records. Use any field values
    public static void dml13(integer input,string acname){
        list<account> accList=new list<account>();
        //   acclist=[select id, Name, Phone, Type, AnnualRevenue, Industry FROM account ];
        for(integer i=1;i<=input;i++){
            account acc =new account();
            acc.name=acname+string.valueof(i);
            accList.add(acc);
        }
        insert accList;
    }
    public static void dml14(integer x)
    {
        integer y=x/2;
        integer z=y*2;
        list<account> acclist=new list<account>();
        for (integer i=1;i<=x;i++)
            if(z==x){
                account acc=new account();
                acc.Name='trail even';
                acc.Industry='Consulting';
                acc.NumberOfEmployees=x+10;
                acclist.add(acc);
                insert acclist;
            }else{
                account acc=new account();
                acc.Name='trail odd';
                acc.Industry='Electronics ';
                acc.AnnualRevenue=(x-1)*1000000;
                acclist.add(acc);
                insert acclist;
            }
        system.debug(acclist.size());
    }
    public static void dml15()
    {
        integer x=1;
        list<account> acclist=[select name,NumberOfEmployees,Industry from account where Industry='energy'];
        for(account a1:acclist)
            a1.NumberOfEmployees=a1.NumberOfEmployees+1;
        update acclist;
    }
    public static void dml16()
    {
        list<account> acclist=[select name,NumberOfEmployees,Industry,AnnualRevenue from account where Industry='energy'];
        for(account a1:acclist)
            if(a1.AnnualRevenue==null)
        {
            a1.AnnualRevenue=0;
            a1.AnnualRevenue=a1.AnnualRevenue-1000;
            a1.NumberOfEmployees=a1.NumberOfEmployees+10;
            update acclist;
        }else{
            if(a1.AnnualRevenue!=null)
            {
                a1.AnnualRevenue=a1.AnnualRevenue-1000;
                a1.NumberOfEmployees=a1.NumberOfEmployees+10;
                update acclist;
            }
        }
    }
    public static void dml17()
    {
        list<account> acclist=[select name,NumberOfEmployees,Industry from account];
        for(account a1:acclist)
            if(a1.NumberOfEmployees==null){
                a1.NumberOfEmployees=10;
                update acclist;
            }else{
                a1.NumberOfEmployees=a1.NumberOfEmployees+10;
                update acclist;
            }
    }
    public static void dml18(){
        list<account> acclist=[select name,AnnualRevenue from account where AnnualRevenue=null ];
        delete acclist;
        /*for(account a1:acclist)
            if(a1.AnnualRevenue==null){
            }*/
    }
    public static void dml19(){
        //string x='[0-9]';
        list<account> acclist=[select name,AnnualRevenue from account where name like 'to delete%' ];
        //for(account a1:acclist)
            //system.debug(a1);
            delete acclist;
    }
}