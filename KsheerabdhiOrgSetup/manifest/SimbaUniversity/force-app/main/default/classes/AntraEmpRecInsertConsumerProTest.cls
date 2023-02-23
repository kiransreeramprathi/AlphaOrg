@istest
private class AntraEmpRecInsertConsumerProTest {
@istest
    static void testInte(){
        test.setMock(HttpCalloutMock.class, new AntraEmpRecInsertConsumerProMock());
        AntraEmpRecInsertConsumerPro ob=new AntraEmpRecInsertConsumerPro();
        Httpresponse res=ob.EmpUpdate();
        string fakebody=res.getBody();
        string expected='Employee_Data:{"empid":"AEM-001","name":"venkat rathnam","phone":"9866832456"}';
        system.assertEquals(200, res.getStatusCode());
        system.assertEquals(expected, fakebody);
    }
}