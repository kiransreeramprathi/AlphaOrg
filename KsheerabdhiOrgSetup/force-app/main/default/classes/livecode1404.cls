public class livecode1404 {
    public static void task1(list<case> clist){
        set<id>idset=new set<id>();
        for(Case clist1:clist){
            idset.add(clist1.accountid);
        }
        integer a=[select count() from Case where Priority='Low' and accountid in:idset];
        integer b=[select count() from Case where Priority='Medium' and accountid in:idset];
        integer c=[select count() from Case where Priority='High' and accountid in:idset];
        list<account> accountlist=[select Id,Name,High_Priority_Cases__c,Medium_Priority_Cases__c,Low_Priority_Cases__c from account where Id in:idset];
        for(account acc:accountlist){
            acc.Low_Priority_Cases__c=a;
            acc.Medium_Priority_Cases__c=b;
            acc.High_Priority_Cases__c=c;
        }
        update accountlist;
    }
    /*write an apex method which takes input as list of accounts. get all the cases for 
     * the input accounts and print a map with key as Accountname+case priority(string)
		and value as list of cases for a same account in a particular priority.*/
    public static void task2(list<account>acc){
        set<id> set1=new set<id>();
        map<string,list<case>> resultmap=new map <string,list<case>>();
        for(account acc1:acc){
            if(acc1.id!=null){
                set1.add(acc1.Id);
            }
        }
        map<id,case> casemap=new map<id,case>([select CaseNumber from case where AccountId in :set1]);
        list<case>caselist=[select CaseNumber from case where AccountId in :set1 ];
        for(case caselist1:caselist){
            if(resultMap.containskey(casemap.get(caselist1.AccountId).CaseNumber)){
                resultMap.get(casemap.get(caselist1.AccountId).CaseNumber).add(caselist1);
            }else{
                List<case> newList = new List<case>();
                caselist.add(caselist1);
                resultMap.put(casemap.get(caselist1.AccountId).CaseNumber,newList);
            }
        }
    }
}