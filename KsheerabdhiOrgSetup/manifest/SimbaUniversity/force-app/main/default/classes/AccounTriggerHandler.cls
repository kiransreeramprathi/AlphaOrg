public class AccounTriggerHandler {
    public boolean runonce=true;
    public static void autoUpdateSalesrep(list<account> acc){
        set<id> accowner=new set<id>();
        for(account ac:acc){
            accowner.add(ac.OwnerId);
        }
        system.debug(accowner);
        Map<Id, user> usermap = new Map<Id, user>([SELECT Name FROM  user WHERE Id IN: accowner]);
        for(account ac:acc){
            User usr=usermap.get(ac.OwnerId);
            ac.Sales_Representative__c=usr.Name;
        }
    }
    public static void noOfLocations(list<account>aclist){
        list<contact> conlist = new list<contact>();
        map<id,decimal>map1=new map<id,decimal>();
        for(account ac:aclist){
            map1.put(ac.id,ac.NumberofLocations__c);
        }
            for(id acid:map1.keyset()){
                for(integer i=0;i<map1.get(acid);i++){
                    contact con=new contact();
                    con.AccountId=acid;
                    con.LastName='contact'+i;
                    conlist.add(con);
            }
            if(conlist!=null){
                insert conlist;
            }
        } 
    }
}