public class antramay192hand {
    public string gender{get;set;}
    public list<Employee_Details__c> disp{get;set;}
  
    public void search(){
        disp=new list<Employee_Details__c>();
        if(gender=='male'){
            disp=[select Name,Phone_number__c,Gender__c from Employee_Details__c where Gender__c='Male'];
        }else{
            disp=[select Name,Phone_number__c,Gender__c from Employee_Details__c where Gender__c='Female'];
        }
}
}