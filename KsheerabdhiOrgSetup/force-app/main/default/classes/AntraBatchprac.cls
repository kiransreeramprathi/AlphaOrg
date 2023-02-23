global class AntraBatchprac implements Database.Batchable<sObject> {
    integer x=10;
    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'select id,name,Employee_Mail_Id__c,First_name__c from Antra_Employee__c where Employee_Mail_Id__c !=null and Mail_Unsubscription_Status__c !=\'true\' and Date_of_Birth__c =TODAY  ';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Antra_Employee__c> empl) {
        EmailTemplate et = [select Id,Subject,Description,HtmlValue,DeveloperName,Body from EmailTemplate where DeveloperName ='Birthday_Email_templete'];
        for(Antra_Employee__c emp : empl) {        
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            List<String> toAddresses = new List<String>();
            toAddresses.add(emp.Employee_Mail_Id__c);
            email.setToAddresses(toAddresses);
            List<String> ccAddresses = new List<String>();
            ccAddresses.add('kiransreeram8@live.com');
            email.setCcAddresses(ccAddresses);
            email.setSubject('Happy Birthday '+emp.First_name__c);
            string emailBody= messaging.renderStoredEmailTemplate(et.Id,emp.id,emp.Id).getHtmlBody();
            email.setHtmlBody(emailBody);
            email.setTemplateId(et.id);
            /*messaging.SingleEmailMessage[] msg =new messaging.SingleEmailMessage[]{email};
                messaging.sendEmail(msg);*/
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
            /*list<messaging.SingleEmailMessage> msg =new list<messaging.SingleEmailMessage>();
            msg.add(email);
            messaging.sendEmail(msg);*/
            x=20;
            system.debug(x);
        }
        
    }   
    
    global void finish(Database.BatchableContext BC) {
        
    }
}