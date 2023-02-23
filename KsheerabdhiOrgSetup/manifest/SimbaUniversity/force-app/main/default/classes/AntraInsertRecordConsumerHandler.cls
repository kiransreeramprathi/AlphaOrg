global class AntraInsertRecordConsumerHandler {
    class Emp_data{
        string name;
        string accnum;
        string site;
    }
    public string AccountName{get;set;}
    public string AccountNumber{get;set;}
    public string Accountsite{get;set;}
    public string UpName{get;set;}
    public string UpNumber{get;set;}
    public string Upsite{get;set;}
    
    global void inrecord(){
        HttpRequest req=new HttpRequest();
        req.setEndpoint('https://ksheerabdhi-dev-ed.my.salesforce.com/services/apexrest/kcfempprovprogram');
        req.setHeader('Authorization', 'Bearer !AQ8AQGw3EalWbiFJrNZD_WGRYekd_R7XP_qKxjqe_rJsQN9RpIs7q.wqrdLxslLp_zFCFW6NQO.KxRN0Mc5TeiBYKdEnn1Nw');
        req.setMethod('POST');
        Emp_data em=new Emp_data();
        em.name=AccountName;
        em.accnum=AccountNumber;
        em.site=Accountsite;
        string jsonbody=JSON.serialize(em);
        req.setHeader('Content-Type', 'application/JSON');
        req.setHeader('accept', 'application/JSON');
        req.setBody(jsonbody);
        http h=new http();
        HttpResponse res=h.send(req);
        system.debug(em);
         system.debug(res.getStatusCode());    
            system.debug(res.getStatus());    
            system.debug(jsonbody);
    }
    global void Uprecord(){
        HttpRequest req=new HttpRequest();
        req.setEndpoint('https://ksheerabdhi-dev-ed.my.salesforce.com/services/apexrest/kcfempprovprogram');
        req.setHeader('Authorization', 'Bearer !AQ8AQGw3EalWbiFJrNZD_WGRYekd_R7XP_qKxjqe_rJsQN9RpIs7q.wqrdLxslLp_zFCFW6NQO.KxRN0Mc5TeiBYKdEnn1Nw');
        req.setMethod('PATCH');
        Emp_data em=new Emp_data();
        em.name=AccountName;
        em.accnum=AccountNumber;
        em.site=Accountsite;
        string jsonbody=JSON.serialize(em);
        req.setHeader('Content-Type', 'application/JSON');
        req.setHeader('accept', 'application/JSON');
        req.setBody(jsonbody);
        http h=new http();
        HttpResponse res=h.send(req);
        system.debug(em);
         system.debug(res.getStatusCode());    
            system.debug(res.getStatus());    
            system.debug(jsonbody);
    }
}