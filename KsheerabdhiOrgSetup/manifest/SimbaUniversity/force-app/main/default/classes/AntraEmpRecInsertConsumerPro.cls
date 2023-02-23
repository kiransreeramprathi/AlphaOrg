global class AntraEmpRecInsertConsumerPro {
    global string EmpFName{get;set;}
    global string EmpLName{get;set;}
    global string EmpMail{get;set;}
    global string empid{get;set;}
    global string upEmpId{get;set;}
    global string upEmpName{get;set;}
    global string upEmpMobile{get;set;}
    
    class Employee_Data{
        string empid;
        string name;
        string phone;
    }
   /* global void AddEmp(){
        HttpRequest req=new HttpRequest();
        req.setEndpoint('callout:ProKcfOrgConnect/services/apexrest/kcfempprovprogram');
        req.setMethod('POST');
        Employee_Data emp=new Employee_Data();
        emp.firstname=EmpFName;
        emp.lastname=EmpLName;
        emp.email=EmpMail;
        string jasonBody=JSON.serialize(emp);
        req.setHeader('Content-Type', 'application/JSON');
        req.setHeader('accept','application/JSON' );
        req.setBody(jasonBody);
        http h=new http();
        httpresponse hr=h.send(req);
        system.debug(emp);
        system.debug(hr.getStatusCode());    
        system.debug(hr.getStatus());    
        system.debug(jasonBody);
    }
    global void delemp(){
        httprequest req=new httprequest();
        req.setEndpoint('callout:ProKcfOrgConnect/services/apexrest/kcfempprovprogram/'+empid);
        req.setHeader('Content-Type', 'application/JSON');
        req.setHeader('accept','application/JSON' );
        req.setMethod('DELETE');
        http h=new http();
        httpresponse res=h.send(req);
        system.debug(req);
        system.debug(res.getBody());
        system.debug(res.getStatusCode());
        system.debug(res.getStatus());
        if (res.getStatusCode()==200)
        {
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.info,'request sent successfully'));
            
        } else{
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.info,'deletion operation unsuccessful'));
        }
    }*/
    global  HttpResponse EmpUpdate(){
        httprequest req=new httprequest();
        req.setEndpoint('callout:ProKcfOrgConnect/services/apexrest/kcfEmpIntiPro/'+upEmpId);
        req.setHeader('Content-Type', 'application/JSON');
        req.setHeader('accept', 'application/JSON');
        Employee_Data em=new Employee_Data();
        em.empid=upEmpId;
        em.name=upEmpName;
        em.phone=upEmpMobile;
        system.debug(em);
        string body=JSON.serialize(em);
        req.setBody(body);
        req.setMethod('PATCH');
        http h=new http();
        httpresponse res=h.send(req);
        system.debug(res.getStatusCode());    
        system.debug(res.getStatus());    
        system.debug(body);
        return res;

    }
}