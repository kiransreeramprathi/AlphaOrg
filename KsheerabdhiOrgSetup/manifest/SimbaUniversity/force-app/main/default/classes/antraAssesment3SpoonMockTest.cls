@istest
private class antraAssesment3SpoonMockTest {
@istest
    static void testInte(){
        test.setMock(HttpCalloutMock.class, new antraAssesment3SpoonMock());
        antraAssesment3SpoonHandler ob=new antraAssesment3SpoonHandler();
        Httpresponse res=ob.fetchdata();
        string fakebody=res.getBody();
        string expected='antraAssesment3SpoonWrapper:{"id":"22473","title":"venkat","ingredientCount":"32"}';
        system.assertEquals(200, res.getStatusCode());
        system.assertEquals(expected, fakebody);
    }
}