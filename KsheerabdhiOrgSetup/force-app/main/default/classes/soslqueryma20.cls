public class soslqueryma20 {
    public string input1{get;set;}
    public list<account> dispacc{get;set;} 
    public list<opportunity> dispopp{get;set;}
    public list<contact> discon {get;set;}
    public list<list<sobject>> nestedlist;
    
    public  void method1(){
        if(input1!=''){
        dispacc=new list<account>();
        dispopp=new list<opportunity>();
        nestedlist=[find :input1 in all fields returning Account(name,phone,Type),opportunity(name,amount),Contact(name,Email) ];
            system.debug(nestedlist);
        dispacc=((list<account>)nestedlist[0]);
        dispopp=((list<opportunity>)nestedlist[1]);
        discon=((list<contact>)nestedlist[2]);
        }else{
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.fatal,'Kindly enter input.'));
        }
}
}