public class AntrafuturecallParent {
    @future
    public static void method1(string a,string b){
        list<contact> conc=new list<contact>();
        for(integer i=1;i<=10000;i++){
        contact con=new contact();
        con.LastName=b+i;
        con.AccountId=a;
            conc.add(con);
    }
        insert conc;
        system.debug(conc.size());
    }
}