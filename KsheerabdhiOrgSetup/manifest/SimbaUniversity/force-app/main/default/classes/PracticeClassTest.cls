@isTest
public class PracticeClassTest {
    @isTest static void checkStringTest(){
        string word = 'zen';
        PracticeClass pc = new PracticeClass();
        boolean returnValue = pc.checkString(word);
        system.assertEquals(true, returnValue, 'Method not working Properly');
        system.assertNotEquals(false, returnValue, 'Method not working Properly');
    }
    //Check insertion of account records
    @istest static void InsrtAccRecTest(){
        string accName = 'KIA'; 
        List<Account> accList1 = [select id from Account];
        PracticeClass.InsrtAccRec(accName);
        List<Account> accList2 = [select id from Account];
        system.assertNotEquals(accList2.size(), accList1.size(), 'Method not working properly');
        integer listsize = accList1.size()+10;
        system.assertEquals(listsize, accList2.size(), 'Method not working properly');
    }
    @istest static void insertJioRecTest(){
        string fName ='Manik';
        String lName = 'basha';
        String email = 'basha@example.com';
        string address = 'dharavi, Mumbai';
        List<Jio_Employee_Details__c> jList1 = [select Name,Employee_Last_Name__c,Employee_Email_ID__c,Address__c FROM Jio_Employee_Details__c];
        PracticeClass.insertJioRec(fName,lName,email,address);
        List<Jio_Employee_Details__c> jList2 = [select Name,Employee_Last_Name__c,Employee_Email_ID__c,Address__c FROM Jio_Employee_Details__c];
        for(Jio_Employee_Details__c jl:jList2){
            if(jl.Employee_Last_Name__c == lName){
                system.assertEquals(lName, jl.Employee_Last_Name__c);
            }
        }
    }
    @istest static void deleterecTest(){
        Account acc = new Account();
        acc.Name = 'salesforce';
        insert acc;
        List<Account> accList1 = [SELECT Name from account where name =: acc.Name];
        boolean returnvalue = PracticeClass.deleterec(acc.Name);
        List<Account> accList2 = [SELECT Name from account where name =: acc.Name];
        system.assertNotEquals(accList1.size(), accList2.size(), 'method not working');
        system.assertEquals(true, returnvalue, 'method not working');
    }
    @istest static void insertConOppTest(){
        List<Account> accList1 = new  List<Account>();
        Account acc = new Account();
        acc.Name = 'salesforce';
        insert acc;
        accList1.add(acc);
        Test.startTest();
        List<contact> PrePorcessing = [Select Name from Contact];
        TriggerPracticeHandler tp = new TriggerPracticeHandler();
        tp.insertConOpp(accList1);
        List<contact> PostPorcessing = [Select Name from Contact];
        system.assertNotEquals(PrePorcessing.size(), PostPorcessing.size(), 'Error in method');
        Test.stopTest();
    }
    @istest static void updateConMailDetails(){
        test.startTest();
        list<account> accList = new list<account>();
        set<id> acId = new set<id>();
        Account acc = new Account();
        acc.Name = 'salesforce';
        accList.add(acc);
        insert accList;
        for(account ac: accList){
            acId.add(ac.id);
            ac.BillingCity = 'Mumbai';
            update ac;
            List<contact> conList = [select id,MailingCity,AccountId from contact where AccountId =:acId];
            TriggerPracticeHandler.updateConMailDetails(accList);
            for(contact con:conList){
                system.assertEquals(ac.BillingCity, con.MailingCity, 'Method not working');
            }
        }
        test.stopTest();
    }
}