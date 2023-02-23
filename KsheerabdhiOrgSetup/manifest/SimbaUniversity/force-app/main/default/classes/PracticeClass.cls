public class PracticeClass {
    integer x = 300;
    public static void helloWorldMeth(){
        system.debug('Hello World');
        //static Excecution syntax: PracticeClass.helloWorldMeth();
        //non static Excecution syntax: PracticeClass pc = new PracticeClass();
        //pc.helloWorldMeth();
    }
    Public void helloWorldWithParameters(string a){
        system.debug('Hello '+a);
        integer y = x;
        system.debug('value of y from x '+y);
    }
    public static void addTwoNumbers(){
        integer a = 20;
        integer b = 30;
        integer c = a+b;
        system.debug('addition of two numbers::'+c);
    }
    public static void substratctTwoNumbers(integer a,integer b){
        integer c = a-b;
        system.debug('Substraction of two numbers::'+c); 
    }
    public static void addTwoStrings(){
        string a = 'galaxy';
        string b = 'salesforce';
        string c = b+'->'+a;
        system.debug(c);
    }
    public static void letgthOfString(){
        string a = 'salesforce';
        integer b = a.length();
        system.debug('length of string '+a+' is '+b);
        system.debug('length of string '+a+' is '+a.length());
    }
    public static void stringToUppercase(){
        string a = 'salesforce';
        system.debug(a.toUpperCase());
    }
    //Print message 10 times
    Public static string printmsg(){
        string a = 'Salesforce galaxy';
        for(integer i =0; i<10;i++){
            system.debug('Print Message '+i+' times '+a);
        }
        return a;
    }
    //Print message dynamically
    Public static string printmsg1(integer x){
        string a = 'Salesforce galaxy';
        for(integer i =1; i<=x;i++){
            system.debug('Print Message '+i+' times '+a);
        }
        return a;
    }
    //If the entered age is less than 18 years then print message 'The candidate is not elgible for cast the vote',
    //otherwise if the age is greater than 18 then he is elgible to cast the vote.
    Public static void checkAge(integer age){
        if(age<18){
            system.debug('The candidate is not elgible for casting the vote');
        }else{
            system.debug('The candidate is  elgible for casting the vote');
        }
    }
    //Check the string given by user and if string contains letter z then return true else false.
    Public boolean checkString(string word){
        boolean flag;
        if(word.contains('z')){
            flag = true;
            system.debug('boolean state '+ flag);
        }else{
            flag = false;
            system.debug('boolean state '+ flag);
        }
        return flag;
    }
    //Check the input value if it is blank return as string is blank, if it is empty eturn it as empty,if it ontains any 
    //value return it as containing value
    Public static string checkStrings(string a){
        string returnValue;
        if(string.isEmpty(a)){
            returnValue = 'string is empty';
            system.debug('string is empty if block executed');
        }else if(string.isBlank(a)){
            returnValue = 'string is blank';
            system.debug('string is blank else if block executed');
        }else{
            returnValue = 'string contains some value';
            system.debug('string contains some value else block execute');
        }
        return returnValue;
    }
    //Add months to certain date
    Public Static Void addmonths(integer ip){
        Date certainDate =  Date.newInstance(1998, 08, 25);
        system.debug('certainDate::'+certainDate);
        Date newDate = certainDate.addMonths(ip);
        system.debug('newDate::'+newDate);
        Integer daysBtw = certainDate.daysBetween(newDate);
        system.debug('Days Between two dates::'+daysBtw);
    }
    Public static void CollectionsDemo(){
        List<String> stringList = new List<string>();
        String sr1 = 'value 1';
        string sr2 = sr1;
        string sr3 = 'value 2';
        stringList.add(sr3);
        stringList.add(sr1);
        stringList.add(sr2);
        system.debug('stringList::'+stringList);
        string sr4 = stringList[0];
        system.debug('sr4::'+sr4);
        set<string> stringSet = new set<string>();
        stringSet.add(sr3);
        stringSet.add(sr1);
        stringSet.add(sr2);
        system.debug('stringSet::'+stringSet);
    }
    Public static void addingIntToList(integer n){
        List<Integer> intList = new List<Integer>();
        for(integer i=1;i<=n;i++){
            intList.add(i);
        }
        system.debug('intList::'+intList.isEmpty());
    }
    Public static void mapDemo(){
        Map<integer,string> map1 = new map<integer,string>();
        map1.put(1,'A');
        map1.put(2,'b');
        map1.put(3,'c');
        system.debug('map1::'+map1);
        /*Remove key
map1.remove(3);
system.debug('map1::'+map1);*/
        //Map size:
        system.debug('map1::'+map1.size());
        List<string> stList = new List<string>();
        stList = map1.values();
        system.debug('stList::'+stList);
        Set<Integer> intset = new set<integer>();
        intset = map1.keyset();
        system.debug('intset::'+intset);
        system.debug('map1::'+map1.containskey(9));
    }
    
    //Retrive or query All records from acount object and store in a list
    Public static void accountlist(){
        List<Account> accList = [SELECT Id, Phone, Name, Website, AccountNumber, ShippingCity, BillingAddress, ShippingStreet FROM Account LIMIT 2];
        system.debug('accList::'+accList);
    }
    
    //Retrive or query All records from JIO Employee object and store in a list
    Public static void jioEmpList(String lastName){
        List<Jio_Employee_Details__c> jioEmpList = [SELECT Id, Name, Employee_Last_Name__c, Employee_Email_ID__c, Date_of_Birth__c, Employee_Address__c FROM Jio_Employee_Details__c];
        system.debug('jioEmpList::'+jioEmpList);
        //I want retrive only 3rd record?
        system.debug('jioEmpList::'+jioEmpList[2]);
        //I want print only last name of 4th record?
        system.debug('jioEmpList::'+jioEmpList[3].Employee_Last_Name__c);
        // Retrive the data using where clause static
        List<Jio_Employee_Details__c> jioEmpList1 = [SELECT Id, Name, Employee_Last_Name__c, Employee_Email_ID__c, Date_of_Birth__c, Employee_Address__c FROM Jio_Employee_Details__c WHERE Employee_Last_Name__c = 'Rana'];
        system.debug('jioEmpList1::'+jioEmpList1);
        // Retrive the data using where clause dynamic
        List<Jio_Employee_Details__c> jioEmpList2 = [SELECT Id, Name, Employee_Last_Name__c, Employee_Email_ID__c, Date_of_Birth__c, Employee_Address__c FROM Jio_Employee_Details__c WHERE Employee_Last_Name__c =: lastName];
        system.debug('jioEmpList2::'+jioEmpList2);
    }
    Public static void soqlDemo(){
        List<Account> accList = [SELECT Name,Rating,Phone,AnnualRevenue,SLAExpirationDate__c FROM Account];
        system.debug('Out put::'+accList);
        //To know the size of collection
        system.debug('size of collection::'+accList.size());
        // retrive where rating is Hot
        List<Account> accList1 = [SELECT Name,Rating,Phone,AnnualRevenue,SLAExpirationDate__c FROM Account WHERE Rating = 'Hot'];
        system.debug('where rating is Hot::'+accList1);
        // retrive account where account name starts with G
        List<Account> accList2 = [SELECT Name,Rating,Phone,AnnualRevenue,SLAExpirationDate__c FROM Account WHERE Phone LIKE '%0'];
        system.debug('accList2::'+accList2);
        system.debug('accList2 size ::'+accList2.size());
        //Retrive acounts where their annual revenue is greater than 10k
        List<Account> accList3 = [SELECT Name,Rating,Phone,AnnualRevenue,SLAExpirationDate__c FROM Account WHERE AnnualRevenue >0 AND AnnualRevenue <10000 ];
        system.debug('accList3::'+accList3.size());
        //Parent to child query
        List<Account> accConList = [SELECT Name,(SELECT Id,Name,MobilePhone FROM Contacts) FROM Account Where Name = 'GenePoint'];
        system.debug('accConList::'+accConList);
        //Child to Parent
        List<Contact> conAccList = [SELECT Name,Account.AnnualRevenue From Contact];
        //Custom Object
        List<Jio_Employee_Leaves__c> cToP = [select Name,Employee_name__r.Employee_Last_Name__c From Jio_Employee_Leaves__c];
    }
    //DML
    //Insert
    //Update
    //delete
    //undelete
    //Upsert
    // Insert 10 account records in account object account name should be based upon input value
    Public static void InsrtAccRec(string accName){
        for(integer i =1;i<=10;i++){
            Account acc = new Account();
            acc.Name = accName+' '+i;
            acc.Type = 'Other';
            Insert acc;
        }
    }
    Public static void InsrtAccRec1(string accName){
        List<Account> acclist = new List<account>();
        for(integer i =1;i<=10;i++){
            Account acc = new Account();
            acc.Name = accName+' '+i;
            acc.Type = 'Prospect';
            acclist.add(acc);
        }
        insert accList;
    }
    // Avoid Insertion of duplicate Account record
    // Based on List Size
    Public static void avoidDupli(string accName){
        List<Account> accList = [Select Name,Id FROM Account Where Name =: accName];
        system.debug('accList size::'+accList.size());
        if(accList.size()>0){
            system.debug('Already Acount name Exisists');
        }else{
            Account acc = new Account();
            acc.Name = accName;
            acc.Type = 'Prospect';
            insert acc;
        }
    }
    //With For Each loop
    Public static void avoidDupliq1(string accName){
        List<Account> accList = [Select Name,Id FROM Account Where Name =: accName];
        for(Account ac:accList){
            if(accName.contains(ac.Name)){
                system.debug('Already Acount name Exisists');
            }else{
                Account acc = new Account();
                acc.Name = accName;
                acc.Type = 'Prospect';
                insert acc;
            }
        }
    }
    //Insert Records into custom Objects
    Public static Jio_Employee_Details__c insertJioRec(string fName,String lName, String email, string address){
        Jio_Employee_Details__c jemp = new Jio_Employee_Details__c();
        jemp.Name = fName;
        jemp.Employee_Last_Name__c = lName;
        jemp.Employee_Email_ID__c = email;
        jemp.Address__c = address;
        insert jemp;
        return jemp;
    }
    // Update salesforce account record website field if it is null
    Public static void updateAccRec(){
        string url = 'www.force.com';
        List<Account> accList = [SELECT Id,Name,Website FROM Account WHERE Name LIKE '%Salesforce%'];
        for(Account ac:accList){
            if(ac.Website == null || string.isEmpty(ac.Website)){
                ac.Website = url;
            }
        }
        update accList;
    }
    //Update account annual revenue field where those fields are empty or null.
    Public static void updateAccRe1(){
        List<Account> accList = [SELECT AnnualRevenue,Name FROM Account WHERE AnnualRevenue = null];
        //system.debug('accList::'+accList.size());
        for(Account ac:accList){
            ac.AnnualRevenue = 0;
        }
        update accList;
    }
    //Update account record fields if their annual revenue is less than 10000 then update it to 100000 else add 1 dollar.
    Public static void updateAccRec2(){
        List<Account> accList = [SELECT AnnualRevenue,Name FROM Account];
        for(Account ac:accList){
            if(ac.AnnualRevenue < 10000){
                ac.AnnualRevenue = 100000;
            }else{
                ac.AnnualRevenue = ac.AnnualRevenue+1;
            }
        }
        Update accList;
    }
    // Input should be taken from user side, as per input name if it already contains in DB we need to update its description
    // or else we need to insert the account record.
    Public static void operation1(string ipName){
        List<Account> accList = [SELECT Name,Description From Account WHERE Name =: ipName ];
        system.debug('accList '+accList.size());
        if(accList.size()==0){
            Account ac = new Account();
            ac.Name = ipName;
            insert ac;
        }else{
            for(Account ac:accList){
                ac.Description = 'This was updated from apex program';
            }
            update accList;
        }
    }
    //Delete record where name is salesforce
    Public static Boolean deleterec(string accName){
        boolean flag;
        List<Account> accList = [SELECT Name FROM Account where Name =: accName ];
        if(accList.size()>0){
            delete accList;
            system.debug('Record Deleted');
            flag = true;
        }else{
            system.debug('There is no rcord with the given name');
            flag = false;
        }
        return flag;
    }
    //UnDelete record where name is salesforce
    Public static void unDeleterec(string accName){
        List<Account> accList = [SELECT Name FROM Account where Name =: accName ALL ROWS];
            if(accList.size()>0){
                Undelete accList;
                system.debug('Record Recovered');
            }else{
                system.debug('There is no rcord with the given name');
            }
    }
    //If account site of salesforce record is null update the account site and check the salesfore galaxy record is available
    //in org if not insert the record.
    Public Static void upsertRec(){
        List<Account> upAccList = new List<Account>();
        List<Account> accList1 = [SELECT Name,Site FROM Account where Name ='salesforce' ];
        for(Account acc:accList1){
            if(acc.Site == null){
                acc.Site = 'www.google.com';
                upAccList.add(acc);
                system.debug('site address updated');
            }else{
                system.debug('site address is not blank');
            }
        }
       List<Account> accList2 = [SELECT Name FROM Account where Name ='salesforce galaxy' ];
        if(accList2.size()<1){
            Account acc1 = new Account();
            acc1.Name = 'salesforce galaxy';
            upAccList.add(acc1);
            system.debug('Account Inserted');
        }else{
            system.debug('Account Already exisists');
        }
        upsert upAccList;
    }
    //Governer Limits
    Public static void govPrac(){
        List<Account> accList = new List<Account>();
        for(integer i=1;i<=200;i++){
            Account acc = new Account();
            acc.Name = 'Uber '+i;
            accList.add(acc);
        }
        insert accList;
    }
}