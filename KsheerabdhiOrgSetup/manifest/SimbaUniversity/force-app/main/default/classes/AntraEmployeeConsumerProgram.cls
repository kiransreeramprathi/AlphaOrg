global class AntraEmployeeConsumerProgram {
    public list<AntraEmployeeConsumerProgramWrapper> emps{get;set;}
    global void getdetails(){
        HttpRequest req=new HttpRequest();
        req.setEndpoint('https://ksheerabdhi-dev-ed.my.salesforce.com/services/apexrest/kcfempprovprogram');
        req.setHeader('Authorization', 'Bearer !AQ8AQMp0_G_aYRx6JyXnNPLhwfDpsDcWFxF2B.HgnftC7zL6vA0MCF6omx7zFxNU8N6pmLCg0rOVJcrDED.2DXBCtlQcu9VS');
        req.setMethod('GET');
        Http h=new Http();
        HttpResponse res=h.send(req);
        if(res.getStatusCode()==200){
            string body = res.getBody();
            object ob=JSON.deserialize(body, list<AntraEmployeeConsumerProgramWrapper>.class);
            emps=(list<AntraEmployeeConsumerProgramWrapper>)ob;
            system.debug(body);
        }
        
    }
}