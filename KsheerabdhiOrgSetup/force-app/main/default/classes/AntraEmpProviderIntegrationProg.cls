@restresource(urlMapping='/kcfEmpIntiPro/*')
global class AntraEmpProviderIntegrationProg {
    class Employee_Data{
        string empid;
        string name;
        string phone;
    }
@httppatch
    global static void EmpUpdatePro(){
        restrequest res=restcontext.request;
        string jsonbody=res.requestBody.tostring();
        system.debug(jsonbody);
        string employeeid=res.requestURI.substring(res.requestURI.lastindexof('/')+1);
        system.debug(employeeid);
        list<Antra_Employee__c> aemp=[select id,Name from Antra_Employee__c where Name =: employeeid];
        system.debug(aemp);
        object obj = json.deserialize(jsonbody, Employee_Data.class);
        Employee_Data classdata=(Employee_Data)obj;
        for(Antra_Employee__c a:aemp){
           a.First_name__c=classdata.name;
           a.Employee_Mobile_number__c=classdata.phone;
            update a;
        }
    }
}