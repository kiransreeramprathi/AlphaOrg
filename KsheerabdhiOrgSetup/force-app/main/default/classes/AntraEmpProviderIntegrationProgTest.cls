@istest
private class AntraEmpProviderIntegrationProgTest {
    class Employee_Data{
        string empid;
        string name;
        string phone;
    }
    @istest static void webSericeProTest(){
        httprequest req=new httprequest();
        req.setEndpoint('callout:ProKcfOrgConnect/services/apexrest/kcfEmpIntiPro/AEM-001');
        req.setHeader('Content-Type', 'application/JSON');
        req.setHeader('accept', 'application/JSON');
        Employee_Data em=new Employee_Data();
        em.empid='AEM-001';
        em.name='simha';
        em.phone='1234567890';
        system.debug(em);
        string body=JSON.serialize(em);
        req.setBody(body);
        req.setMethod('PATCH');
        http h=new http();
        httpresponse res=h.send(req);
        
    }
}