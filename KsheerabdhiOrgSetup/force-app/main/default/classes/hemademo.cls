public class hemademo
{
/*public static void trail()
{
date date1=date.newInstance(2022,01,03);
    system.debug(date1);
    time time1=time.newInstance(10,10,59,1001);
    system.debug(time1);
    datetime dt=datetime.newInstance(date1, time1);
    system.debug(dt);
    
}
    public static void ttask1(list<account> aclist){
        for(account aclist1:aclist){
            if(aclist1.Description==null || aclist1.Description.length()<10){
                aclist1.Description='user not upadated description while inserting';
            }
        }
    }
    public static void ttask2(list<account> acclist){
       list<contact> clist=new list<contact>();
        for(account acc:acclist){
        for(integer i=1;i<=6;i++){
            contact cnew=new contact();
            cnew.lastName=acc.name+i;
            cnew.AccountId=acc.id;
            clist.add(cnew);
        }
          
        }
          if(!clist.isempty())
                insert clist;
    }
    public static void task15(){
                task newtask=new task();
                newtask.Subject='Other';
                newtask.Priority='High';
                newtask.Status='Not Started';
                newtask.Description='test case automate';
                insert newtask;

    }
    public static void demo1(){
        String s1 = 'abc';
String s2 = 'xy';
String s3 = s1.leftPad(7,s2);
System.debug(s3);
    }*/
    public static void method1(integer a,integer b){
        integer result=a+b;
        system.debug('addition of two numbers is = '+result);
    }
}