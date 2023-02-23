@istest
global class AntraEmpRecInsertConsumerProMock implements HttpCalloutMock {
    global HttpResponse respond(HttpRequest req){
        Httpresponse response =new Httpresponse();
        response.setHeader('content-type', 'application/JSON');
        response.setBody('Employee_Data:{"empid":"AEM-001","name":"venkat rathnam","phone":"9866832456"}');
        response.setStatusCode(200);
        return response;
    }
}