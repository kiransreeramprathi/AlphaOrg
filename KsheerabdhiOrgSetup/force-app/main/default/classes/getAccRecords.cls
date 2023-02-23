public with sharing class getAccRecords {
    @AuraEnabled(cacheable=true)
    public static list<account> method1(string accName){
            list<account> acc=[select Name,Phone,Industry from account where Name=:accName WITH SECURITY_ENFORCED ];
                System.debug( 'Domain URL is' + System.Url.getOrgDomainUrl() );    
        return acc;  
}
}