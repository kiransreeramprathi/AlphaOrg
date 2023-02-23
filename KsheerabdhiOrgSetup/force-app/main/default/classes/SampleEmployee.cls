public class SampleEmployee {
    public void insertEmployee() {        
        Antra_Employee__c em=new Antra_Employee__c();
		em.First_name__c='challa';
        em.Last_Name__c='madhusudhan rao';
        em.Employee_Mail_Id__c='madhu@live.com';
        em.Employee_Mobile_number__c='25000';
        insert em;
        system.debug(em.id);
        system.debug(em.Name);
    }
}