@istest
public class live080422testclass {
/*@istest static void testrun(){
        account acc=new account();
        acc.Name='test';
    	acc.number_of_contacts_to_be_created__c=4;
    	acc.Phone='9866832456';
        insert acc;
    contact con1=new contact();
    con1.MobilePhone='9866832456';
    con1.LastName='new contact';
    con1.AccountId=acc.Id;
    con1.Amount_x__c=300;
    con1.Amount_y__c=300;
    con1.Amount_Type__c='Negative';
    insert con1;
    contact con=new contact();
    con.MobilePhone='9866832456';
    con.LastName='new contact';
    con.AccountId=acc.Id;
    con.Amount_x__c=300;
    con.Amount_Type__c='Positive';
    insert con;
       /* Opportunity opp =new Opportunity();
        opp.Name= 'test name';
        opp.CloseDate= date.today();
        opp.StageName= 'Negotiation/Review';
        opp.AccountId=acc.Id;
    	opp.Amount=2000;
        insert opp;
        opp.StageName= 'Closed Won';
        update opp;
    
    //12-04-2022
        list<asset> assetlist=new list<asset>();
            asset ass1=new asset();
            date d1=date.newInstance(2021, 05, 12);
        date d2=date.newInstance(2022, 05, 12);
            ass1.name='jhon';
            assetlist.add(ass1);
      		insert  assetlist; 
      
  
}*/
    @istest
    public static void AEMEMployeeInsert(){
        Antra_Employee__c aem=new Antra_Employee__c();
        aem.First_name__c='gautham';
        aem.Employee_Mail_Id__c='autham.n.sfdc@gmail.com';
        insert aem;
    }
}