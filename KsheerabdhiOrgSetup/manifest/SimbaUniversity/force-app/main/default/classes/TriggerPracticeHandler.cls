public class TriggerPracticeHandler {
    // When user inserting Account record if account number is blank update it automatically as 12345678.
    public static void accInsertMeth1(List<Account> acc){
        for(Account ac:acc){
            if(ac.AccountNumber == null){
                ac.AccountNumber = 'This is updated from trigger: 12345678';
            }
        }
    }
    //When user inserting opportunity record if type is not selected update that type feild as 'New Customer' automatically.
    public static void oppInsertMeth2(List<Opportunity> opp){
        for(Opportunity op:opp){
            if(op.Type == null){
                op.Type = 'New Customer';
            }
        }
    }
    //When user inserting new account record if account number and phone fileds are empty display error message.
    Public static void accErrorMeth1(List<Account> accList){
        for(Account ac:accList){
            if(ac.AccountNumber == null){
                ac.AccountNumber.addError('Account Number is empty');
            }if(ac.Phone == null){
                ac.Phone.addError('Phone number is Empty');
            }
        }
    }
    // When user inserting or updating record check the account name if it was already exists stop saving the record
    // to avoid duplication.
    Public static void avoidAccDupli(List<Account> accList){
        Set<string> accNameList = new set<String>();
        For(Account ac:accList){
            accNameList.add(ac.Name);
        }
        system.debug('Account Name:: '+accNameList);
        List<Account> accQueryList = [SELECT Name From Account WHERE Name =: accNameList];
        if(accQueryList.size() != 0){
            for(Account ac:accList){
                ac.Name.addError('Account name Already Exisists');
            }
        }
    }
    //When user creating account record create 1 contact record and 1 opportunity record, and relate those records 
    //with inserting account record.
    Public  void insertConOpp(List<Account> acc){
        List<Contact> conList = new List<contact>();
        List<Opportunity> oppList = new List<Opportunity>();
        for(Account ac:acc){
            Contact con = new contact();
            con.LastName = ac.Name +' Contact';
            con.AccountId = ac.Id;
            conList.add(con);
            Opportunity opp = new opportunity();
            opp.Name = ac.Name+' Opportunity';
            opp.AccountId = ac.Id;
            opp.StageName = 'Perception Analysis';
            opp.CloseDate = date.today();
            oppList.add(opp);
        }
        insert oppList;
        insert conList;
    }
    //When Billing City is Not Null or not blank, for each Contact under the Account, 
    //update MailingCity of Contact to Billing City of Account.
    Public static void updateConMailDetails(List<Account> accList){
        set<id> accIdList = new set<id>();
        for(Account ac:accList){
            accIdList.add(ac.Id);
            if(ac.BillingCity != null){
                List<Contact> conList = [select id,MailingAddress,AccountId from contact where AccountId =:accIdList];
                for(Contact con:conList){
                    con.MailingCity = ac.BillingCity;
                    con.MailingCountry = ac.BillingCountry;
                    update con;
                }
            }
        }
    }
    //When a opportunity is closed won then update the feild on account object, create feild on account object as
    //Total opportunity amount won.
    Public static void oppWon(list<opportunity> oppList){
        set<id> accIdSet = new set<id>();
        map<id,decimal> map1 = new map<id,decimal>();
        for(opportunity op:oppList){
                accIdSet.add(op.AccountId);
        }
        List<AggregateResult> aggrList = [select accountid,sum(Amount)tot from opportunity where StageName = 'Closed Won' group by accountid];
        for(AggregateResult ag:aggrList){
            map1.put((id)ag.get('accountid'),(decimal)ag.get('tot'));
        }
        List<Account> accList = [select id,Total_opportunity_amount_won__c	from account where id in :accIdSet ];
        for(account ac:accList){
            ac.Total_opportunity_amount_won__c = map1.get(ac.Id);
        }
        update accList;
    }    
}