public class AntraAssesmentPrac {
    list<Employee_Details__c > acc=[select id,Email_ID__c from Employee_Details__c where Email_ID__c ='kiransreeram8@live.com' ];
    public void method1(){
        for(Employee_Details__c  a:acc){
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
            list<string> toaddress=new list<string>();
            toaddress.add(a.Email_ID__c);
            email.setToAddresses(toaddress);
            list<string> ccaddress=new list<string>();
            ccaddress.add('kiransreeram8@gmail.com');
            email.setCcAddresses(ccaddress);
            email.setSubject('News letter');
            email.setPlainTextBody('Hello dear');
            messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
        }
    }
}