public class AntraAssesmentmail {
    @InvocableMethod
    public static void method1(){
        EmailTemplate et = [select Id,Subject,Description,HtmlValue,DeveloperName,Body from EmailTemplate where DeveloperName ='Supplier_Onboard'];
        list<Supplier__c> suplist=[select id,Name,Supplier_Email_ID__c,Supplier_Name__c from Supplier__c];
        for(Supplier__c  a:suplist){
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
            list<string> toaddress=new list<string>();
            toaddress.add(a.Supplier_Email_ID__c);
            email.setToAddresses(toaddress);
            list<string> ccaddress=new list<string>();
            ccaddress.add('kiransreeram8@gmail.com');
            email.setCcAddresses(ccaddress);
            email.setSubject('Welcome '+a.Supplier_Name__c);
            //email.setPlainTextBody('Hello supplier Welocome Onboard');
            string emailBody= messaging.renderStoredEmailTemplate(et.Id,a.id,a.Id).getHtmlBody();
            email.setHtmlBody(emailBody);
            email.setTemplateId(et.id);
            messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
        }
    }
}