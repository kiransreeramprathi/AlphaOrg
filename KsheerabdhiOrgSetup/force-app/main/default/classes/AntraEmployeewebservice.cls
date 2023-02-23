@RestResource(urlMapping='/kcfempprovprogram/*')
global with sharing class AntraEmployeewebservice {
@HttpGet
    global static list<Emp> getEmployeeRecord(){
        list<Emp> newemp=new list<Emp>();
        list<Employee_Details__c> emp=[SELECT Id, Name, Employee_name__c, Employee_ID__c,Email_ID__c FROM Employee_Details__c limit 10];
        for(Employee_Details__c e1:emp){
            Emp emob=new Emp();
            emob.eid=e1.Id;
            emob.empemail=e1.Email_ID__c;
            emob.empname=e1.Employee_name__c;
            emob.ename=e1.Name;
            emob.empid=e1.Employee_ID__c;
            newemp.add(emob);
        }
        return newemp;
    }
    class Emp_data{
        string name;
        string accnum;
        string site;
    }
    class Employee_Data{
        string firstname;
        string lastname;
        string email;
    }
    @HttpPost
    global static void insertEmpRecord(){
        RestRequest res=RestContext.request;
        string JsonBody=res.requestBody.tostring();
        object obj=Json.deserialize(JsonBody,Employee_Data.class);
        Employee_Data accd=(Employee_Data)obj;
        Antra_Employee__c aemp=new Antra_Employee__c();
        aemp.First_name__c=accd.firstname;
        aemp.Last_Name__c=accd.lastname;
        aemp.Employee_Mail_Id__c=accd.email;
       insert aemp; 
       
    }
    @HttpPatch
    global static void UpdateAccRecord(){
        RestRequest res=RestContext.request;
        system.debug(res);
        string JsonBody=res.requestBody.tostring();
        object obj=Json.deserialize(JsonBody,Emp_data.class);
        Emp_data accd=(Emp_data)obj;
        Account acc=new Account();
        acc.Name=accd.name;
        acc.AccountNumber=accd.accnum;
        acc.Site=accd.site;
        update acc;
    }
    @HttpDelete
    global static void deleteEmpRecord(){
        restrequest req=restcontext.request;
        system.debug(req);
        string employeeid=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        system.debug(employeeid);
        list<Antra_Employee__c> aemp=[select id,Name from Antra_Employee__c where Name=:employeeid];
        delete aemp;
    }
}