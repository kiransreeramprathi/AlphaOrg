public class antramay19hand {
    public string ename{get;set;}
    public decimal age{get;set;}
    public string email{get;set;}
    list<Employee_Details__c>empd;
    public list<Employee_Details__c> emptyli{get;set;}
   public antramay19hand(){
        empd=[select Name, Age__c, Email_ID__c from Employee_Details__c];
    }
    public void search(){
        emptyli=new list<Employee_Details__c>();
        if(ename!=''){
            for(Employee_Details__c e1:empd){
                if(e1.Name==ename){
                    emptyli.add(e1);
                }
            }
        }
        else if(age>0){
            for(Employee_Details__c e1:empd){
                if(e1.Age__c > age){
                    emptyli.add(e1);
                }
            }
        }
         else if(email!=''){
            for(Employee_Details__c e1:empd){
                if(e1.Email_ID__c==email){
                    emptyli.add(e1);
                }
            }
        }
    }
}