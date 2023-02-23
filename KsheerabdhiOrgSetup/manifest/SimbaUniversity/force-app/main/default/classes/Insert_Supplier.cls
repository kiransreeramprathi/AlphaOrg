public class Insert_Supplier 
{
    public string supplierName{get;set;}
    public string supplierMno{get;set;}
    public string supplierEmail{get;set;}
    public string supplierAddress{get;set;}
    public list<Supplier__c> supli{get;set;}
    
    public void ADD(){
        Supplier__c sup=new Supplier__c();
        sup.Supplier_Name__c=supplierName;
        sup.Supplier_mobile_Number__c=supplierMno;
        sup.Supplier_Email_ID__c=supplierEmail;
        sup.Supplier_Address__c=supplierAddress;
        insert sup;
        supli=[select Supplier_Name__c, Supplier_mobile_Number__c, Supplier_Email_ID__c, Supplier_Address__c,Name  
               from Supplier__c where Supplier_Name__c  =:supplierName ];
        
    }
}