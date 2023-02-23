public class AuraDynamicPicklist {
    @auraEnabled
    public static list<string> DisplayLeadDetails(){
        list<Lead> lList = [SELECT Status FROM Lead];
        list<string> lst = new list<string>();
        for(Lead ld:lList){
            lst.add(ld.Status);
        }
        return lst;
    }
    @auraEnabled
    public static list<Lead> getSelectedRecord(string Stus){
        list<Lead> LedList = [SELECT Id, Name, Company, Phone, Email, LeadSource, Status FROM Lead where Status=:Stus];
        return LedList;
    }
    @auraEnabled
    Public static list<Lead> ListLeads(string ldName) {
        list<Lead> lList = [SELECT Id, Name, Company, Phone, Email, LeadSource, Status FROM Lead where name=:ldName];
        return lList;
    }
    @auraEnabled
    public static list<string> DisplayLeadSourceDeatils(){
        list<Lead> lList = [SELECT LeadSource FROM Lead];
        list<string> lst = new list<string>();
        for(Lead ld:lList){
            lst.add(ld.LeadSource);
        }
        return lst;
    }
    @auraEnabled
    public static list<Lead> getSelectedLeadRecord(string leadSrc){
        list<Lead> LedList = [SELECT Id, Name, Company, Phone, Email, LeadSource, Status FROM Lead where LeadSource=:leadSrc];
        return LedList;
    }
}