public class DeleteLevaeRecords {
@InvocableMethod
public static void method1(list <id> objId )
{
list <Antra_Employee_Leaves__c> list1= [select id from Antra_Employee_Leaves__c where Employee_ID__c in:objId ];
delete list1;
}
}