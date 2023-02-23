public class antrasoql1 {
    public string emp{get;set;}
    public list<Employee_Details__c> acc{get;set;}
    public integer opval{get;set;}
    public  void submit(){
        acc=[SELECT Name, Last_name__c, Employee_name__c, Date_of_Birth__c, Age__c,
             date_of_joining__c, Employee_ID__c, Gender__c FROM Employee_Details__c where Name=:emp ];
       list<aggregateresult> agg=[select COUNT(Name)numb from Employee_Details__c where Name=:emp];
        for(aggregateresult agg1:agg){
            opval=(integer)agg1.get('numb');
        }
        
    }

}