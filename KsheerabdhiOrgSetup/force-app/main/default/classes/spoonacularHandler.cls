global class spoonacularHandler {
    //list<SpoonacularWrapper> spl{get;set;}
    public List<extendedIngredients> sp{get;set;}
    global void get(){
        HttpRequest req=new HttpRequest();
        req.setEndpoint('https://api.spoonacular.com/recipes/716429/information?apiKey=6ffe667f97cf4681a3b96ca31b64eba3');
        req.setMethod('GET');
        Http h=new Http();
        HttpResponse r=h.send(req);
        if(r.getStatusCode()==200&&r.getbody() != null){
            string body =r.getBody();
            object boj=JSON.deserialize(body, SpoonacularWrapper.class);
            SpoonacularWrapper sl=(SpoonacularWrapper)boj;
            sp=sl.getextendedIngredients();
        }
    }
}