public class AntraFuturecallPrac {
    public static void childclass(){
        account acc=new account();
        acc.Name='stark Industries';
        insert acc;
        AntrafuturecallParent.method1(acc.Id,acc.Name);
        
    }
    public static void deleterecords(){
        list<contact> con=[select id,name from Contact where Account.Name ='stark industries'];
        delete con;

    }
}