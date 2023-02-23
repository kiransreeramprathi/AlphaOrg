@isTest
public class SampleEmployeeTest {
	@isTest
   public static void testAntraEmployee(){
		Antra_Employee__c em=new Antra_Employee__c();
		em.First_name__c='abc';
		em.Employee_salary__c=9876.54;
		em.Employee_Mail_Id__c='abc@gmail.com';
		insert em;
       SampleEmployee s=new SampleEmployee();
       s.insertEmployee();
		
    }
}