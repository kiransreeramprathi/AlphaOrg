global class AntraIntiPatchRecordHandler {
    global string AcName{get;set;}
    global list<AntraAccountConsumerProgramWrapper> accw{get;set;}
    global list<AntraAccountConsumerProgramWrapper> accw1 = new list<AntraAccountConsumerProgramWrapper>();
    string upname;
    string upaccnum;
    string upsite;
    global void getdata(){
        HttpRequest req=new HttpRequest();
        req.setEndpoint('callout:ProKcfOrgConnect/services/apexrest/patchpro/'+AcName);
        //req.setHeader('Authorization', 'Bearer !AQ8AQDOSdaowPoIKFprVNvlJNaQksSxz7ETKjP1Eg_PeIN6VMnsDE54DggSHRYdQgno5V64vIRSes3p4bCA3Y9EqdudwSxaF');
        req.setMethod('GET');
        Http h=new Http();
        HttpResponse res=h.send(req);
        if(res.getStatusCode()==200){
            string body = res.getBody();
            object ob=JSON.deserialize(body, list<AntraAccountConsumerProgramWrapper>.class);
            accw=(list<AntraAccountConsumerProgramWrapper>)ob;
            for(AntraAccountConsumerProgramWrapper ac:accw){
                accw1.add(ac);
            }
            system.debug(body);
        }
    }
    class Emp_data{
        string name;
        string accnum;
        string site;
        string id;
    }
    global void patchdata(){
        system.debug(accw1);
        HttpRequest req=new HttpRequest();
        req.setEndpoint('callout:ProKcfOrgConnect/services/apexrest/patchpro');
        //req.setHeader('Authorization', 'Bearer !AQ8AQDOSdaowPoIKFprVNvlJNaQksSxz7ETKjP1Eg_PeIN6VMnsDE54DggSHRYdQgno5V64vIRSes3p4bCA3Y9EqdudwSxaF');
        req.setMethod('PATCH');
        string jsonbody=JSON.serialize(accw1);
        req.setHeader('Content-Type', 'application/JSON');
        req.setHeader('accept', 'application/JSON');
        req.setBody(jsonbody);
        http h=new http();
        HttpResponse res=h.send(req);
        system.debug(res.getStatusCode());    
        system.debug(res.getStatus());    
        system.debug(jsonbody);
    }
}