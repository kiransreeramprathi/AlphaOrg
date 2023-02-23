public class live080422 {
    public static void task1(list<contact> conlist){
      set<id>accpos=new set<id>();
        set<id>accneg=new set<id>();
        for(contact con1:conlist){
            if(con1.accountid!=null && con1.Amount_Type__c=='Positive'){
                accpos.add(con1.accountid);
            }
            else if(con1.accountid!=null && con1.Amount_Type__c=='Negative'){
                accneg.add(con1.accountid);
            }
            if(accpos!=null && accpos.size()>0){
                list<aggregateresult> aglist1=[select accountid,sum(Amount_x__c)postiveamount from contact where accountid in:accpos group by
                                              accountid];
                list<account> acclist=new list<account>();
                for(aggregateresult ag1:aglist1){
                    account acc=new account();
                    acc.Id=(id)ag1.get('accountid');
                    acc.Rollup_Amount__c=(decimal)ag1.get('postiveamount');
                    acclist.add(acc);
                }
                update acclist;
            }else if (accneg!=null && accneg.size()>0){
                list<aggregateresult> aglist1=[select accountid,sum(Amount_y__c)negamount from contact where accountid in:accneg group by
                                              accountid];
                list<account> acclist=new list<account>();
                for(aggregateresult ag1:aglist1){
                    account acc=new account();
                    acc.Id=(id)ag1.get('accountid');
                    acc.Rollup_Amount__c=(decimal)ag1.get('negamount');
                    acclist.add(acc);
                }
                update acclist;
            }
        }
    }
    public static void method2(date d1,date d2)
    {
        list<asset> assetlist=[select id,name from asset where createddate >:d1 and createddate <:d2];
        map<date,list<asset>> mp1=new map<date,list<asset>>();
        for(asset ass:assetlist)
        {
            if(!mp1.containskey(ass.createddate.date()))
            {
                mp1.put(ass.createddate.date(), new list<asset>());
            }
            list<asset> mp2=mp1.get(ass.createddate.date());
            mp2.add(ass);
            mp1.put(ass.createddate.date(),mp2);
        }
        system.debug(mp1);
    }
}