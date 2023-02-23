global class FuturePrac {
    @Future
    Public static void countContact(list<id> accids){
        list<Account> accList = [select id,(select id from contacts) from account where Id in : accids];
        for(Account ac:accList){
            ac.Number_of_Contacts__c = ac.contacts.size();
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
    /*
     * Execution
list<Account> acList = [select id,Name from account where name like '%salesforce%'];
list<id> acidList = new list<id>();
for(account ac:acList){
acidList.add(ac.id);
}
FuturePrac.countContact(acidList);*/
}