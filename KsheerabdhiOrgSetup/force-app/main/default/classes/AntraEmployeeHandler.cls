public class AntraEmployeeHandler {
    public string efname{get;set;}
    public string elname{get;set;}
    public string embno{get;set;}
    public string eadd{get;set;}
    
    public void insertRec(){
        Antra_Employee__c aem=new Antra_Employee__c();
        aem.First_name__c=efname;
        aem.Last_Name__c=elname;
        aem.Employee_Mobile_number__c=embno;
        aem.Street_1_Address__c=eadd;
        insert aem;
    }
}