public class AntraAllOperationHandler {
    public string EmpFirstName{get;set;} //insert varible
    public string EmpLastName{get;set;} //insert varible
    public string EmpEmail{get;set;} //insert varible
    public string EmpMobileNumber{get;set;} //insert varible
    Public string EmpIdSearch{get;set;} //search varible
    public string UpErr{get;set;} //update varible
    public string UpEmpID{get;set;} //update varible
    public string UpEmname{get;set;}//update varible
    public string UpEmMobile{get;set;}//update varible
    public string UpEmMail{get;set;}//update varible
    public list<Antra_Employee__c> dispEmpDet{get;set;}//display list
    //insert operation
    public void submit(){
        if(EmpFirstName!='' && EmpLastName!='' && EmpEmail!='' && EmpMobileNumber!='' ){
            Antra_Employee__c Aemp=new Antra_Employee__c();
            Aemp.First_name__c=EmpFirstName;
            Aemp.Last_Name__c=EmpLastName;
            Aemp.Employee_Mail_Id__c=EmpEmail;
            Aemp.Employee_Mobile_number__c=EmpMobileNumber;
            insert Aemp;
        }else{
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.info, 'All fields are mandatory to Fill'));
        }  
    }
    //search operation
    public void SearchId(){
        if(EmpIdSearch!=''){
            dispEmpDet=[select First_name__c,Last_Name__c,Employee_Mail_Id__c,Employee_Mobile_number__c from Antra_Employee__c where Name=:EmpIdSearch];
        }else{
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.info, 'kindly Enter Employee ID'));
            
        }
    }
    //update operation
    public void Upsearch(){
       if(UpEmpID!=''){
            dispEmpDet=[select First_name__c,Last_Name__c,Employee_Mail_Id__c,Employee_Mobile_number__c from Antra_Employee__c where Name=:UpEmpID];
           for(Antra_Employee__c emp:dispEmpDet){
               UpEmname=emp.First_name__c;
               UpEmMobile=emp.Employee_Mobile_number__c;
               UpEmMail=emp.Employee_Mail_Id__c;
           }
       }else{
           UpErr='Kindly enter Employee ID';
       } 
    }
    public void UpUpdate(){
        FOR(Antra_Employee__c emp:dispEmpDet){
           emp.First_name__c= UpEmname;
            emp.Employee_Mail_Id__c=UpEmMail;
            emp.Employee_Mobile_number__c=UpEmMobile;
            update dispEmpDet;
        }     
    }
}