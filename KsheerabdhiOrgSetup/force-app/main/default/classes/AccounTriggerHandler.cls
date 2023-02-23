public class AccounTriggerHandler {
    public static void autoUpdateSalesrep(list<account> acc){
        set<id> accowner=new set<id>();
        for(account ac:acc){
            accowner.add(ac.OwnerId);
        }
        system.debug(accowner);
        Map<Id, user> usermap = new Map<Id, user>([SELECT Name FROM  user WHERE Id IN: accowner]);
        for(account ac:acc){
            User usr=usermap.get(ac.OwnerId);
            ac.Sales_Representative__c=usr.Name;
        }
    }
    public static void method1(list<account>acc){
        set<id> conset=new set<id>(); //empty set
        for(account ac:acc){
            if(ac.Rating=='Hot'){
            conset.add(ac.id);
        }
        }
        list<contact> conlist=[select id,Email,Name,Account.Name from contact where AccountId=:conset];
        for(contact ac1:conlist){
                Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                List<String> toAddresses = new List<String>();
                toAddresses.add(ac1.Email);
                email.setToAddresses(toAddresses);
                List<String> ccAddresses = new List<String>();
                ccAddresses.add('kiransreeram8@live.com');
                email.setCcAddresses(ccAddresses);
                email.setSubject('Account- '+ac1.name);
               // string emailBody= messaging.renderStoredEmailTemplate(et.Id,emp.id,emp.Id).getHtmlBody();//for HTML Templete
                email.setPlainTextBody('Hello' +ac1.Account.Name);
                //email.setTemplateId(et.id);
                Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
                
            }
        }
        
    }