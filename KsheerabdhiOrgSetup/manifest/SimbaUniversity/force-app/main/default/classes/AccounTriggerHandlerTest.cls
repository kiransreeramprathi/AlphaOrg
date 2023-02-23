@istest
private class AccounTriggerHandlerTest {
@istest
    static void method1(){
        account ac=new account();
        ac.Name='test 1';
        ac.OwnerId='0055i000002STwHAAW';
        insert ac;
        ac.OwnerId='0055i000002ShIdAAK';
        update ac;
    }
    @istest
    static void method2(){
        account ac=new account();
        ac.Name='test 1';
        ac.NumberofLocations__c=4;
        insert ac;
        ac.NumberofLocations__c=6;
        update ac;
    }
}