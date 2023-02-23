global class antraAssesment3SpoonHandler {
    global integer enterid{get;set;}
    public antraAssesment3SpoonWrapper diswrap{get;set;}
    global /*HttpResponse*/ void fetchdata(){
        httprequest request=new httprequest();
        request.setEndpoint('https://api.spoonacular.com/food/products/'+enterid+'?apiKey=f79174a3ba2a4fe29c9961f52cec9e13');
        request.setMethod('GET');
        http h=new http();
        	httpresponse res=h.send(request);
        if(res.getStatusCode()==200){
            string body=res.getBody();
            system.debug(body);
            object obj=json.deserialize(body, antraAssesment3SpoonWrapper.class);
            diswrap=(antraAssesment3SpoonWrapper)obj;
        }
        //return res;
    }
}