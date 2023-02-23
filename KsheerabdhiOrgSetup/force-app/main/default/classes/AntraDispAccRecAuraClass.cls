public class AntraDispAccRecAuraClass {
@auraEnabled
    public static list<account> getAccRecords(){
        list<account> acc=[select Name,Type, BillingCity, Phone,
                           Website, Industry  from Account where Phone!=null];
        return acc;
    } 
}