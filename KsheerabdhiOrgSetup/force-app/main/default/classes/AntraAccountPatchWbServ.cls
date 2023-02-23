@RestResource(urlMapping='/patchpro/*')
global with sharing class AntraAccountPatchWbServ {
    @HttpGet
    global static list<account> getaccountrecord(){
        RestRequest req = RestContext.request;
        //RestResponse res = RestContext.response;
        String accname =req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        system.debug(accname);
        list<Account> result = [SELECT Id, Name, Site, AccountNumber FROM Account WHERE Name = :accname];
        system.debug(result);
        return result;
    }
    class Empdata{
        string name;
        string accnum;
        string site;
        string id;
    }
    @HttpPatch
    global static void patchrecord(){
        RestRequest req=RestContext.request;
        string JsonBody=req.requestBody.tostring();
        system.debug(JsonBody);
        object obj=JSON.deserialize(JsonBody,list<Empdata>.class);
        system.debug(obj);
        list<Empdata> em = (list<Empdata>)obj;
        for(Empdata e:em){
            system.debug(e.id);
            list<Account> result = [SELECT Id, Name, Site, AccountNumber FROM Account where id=:e.id]; 
            system.debug(result);
            for(account r:result){
                if(r.AccountNumber==null|| r.Site==null){
                    r.AccountNumber='Account number not provided';
                    r.Site='Account site not provided';
                }
            }
            update result;
        }
    }
}