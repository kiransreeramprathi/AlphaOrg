public with sharing class GetConRecImp {
    @AuraEnabled
    public static list<contact> getConlist(string conName){
       list<contact> con=[select LastName,Phone,Account.Name,Id from 
       contact where LastName=:conName with SECURITY_ENFORCED];
       return con;
       
}
}