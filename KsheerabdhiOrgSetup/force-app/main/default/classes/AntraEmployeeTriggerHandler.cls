public class AntraEmployeeTriggerHandler {
    Public static void useCase1(list<Antra_Employee__c > emp){
        for(Antra_Employee__c em:emp){
            integer depcount=[select count() from Antra_Employee__c where Department_ID__c=:em.Department_ID__c];
            system.debug(depcount);
            if(depcount>3){
                em.Department_ID__c.addError('cant save the record kindly choose another department');
            }
        }
    }
    public static void useCase3(list<Antra_Employee__c > emp){
        for(Antra_Employee__c em:emp){
            if(!(em.Employee_Mail_Id__c==em.User_Name__c)){
                em.User_Name__c.adderror('username should be employee mail ID');
            }
        }
    }
    public static void useCase2(list<Antra_Employee__c > emp){
        for(Antra_Employee__c em:emp){
            if((em.Department_Name__c=='SalesForce developer' ||em.Department_Name__c=='JAVA developer' ) && (em.Employee_salary__c<25000 || em.Employee_salary__c>70000)){
                em.Employee_salary__c.adderror('Developer salary should be in the range of 25k to 70k');
            }
            if((em.Department_Name__c=='Human Resource' ) && (em.Employee_salary__c<15000 || em.Employee_salary__c>25000)){
                em.Employee_salary__c.adderror('Human Resource salary should be in the range of 15k to 25k');
            }
        }
    }
}