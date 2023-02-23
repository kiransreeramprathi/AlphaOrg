@istest
global class antraAssesment3SpoonMock implements HttpcalloutMock{
    global httpresponse respond(httprequest req){
        httpresponse res=new httpresponse();
        res.setHeader('content-type', 'application/json');
        res.setBody('{"example":"test"}');
        res.setStatusCode(200);
        return res;
    }
}