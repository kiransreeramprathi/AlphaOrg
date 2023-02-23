public class ProjectUIScreenController {
    public string strselect{get;set;}
    public string projectName{get;set;}
    public string Clientname{get;set;}
    public string ProjectDuration{get;set;}
    public List<SelectOption> options {get;set;}
    public ProjectUIScreenController()
    {
        strselect = '';
        options = new List<SelectOption>();
        List<Antra_Employee__c> aemp=[SELECT id,Name,First_name__c FROM Antra_Employee__c ];
        for(Antra_Employee__c  obj : aemp)
        {
            options.add(new SelectOption(obj.Id,obj.First_name__c));
        }
    }
    public void submit(){
        Antra_Projects__c anp=new Antra_Projects__c();
        anp.Name=projectName;
        anp.Client_Name__c=Clientname;
        anp.Duration__c=ProjectDuration;
        anp.Antra_Employee__c = strselect;
        System.debug(strselect);
        /*list<Antra_Employee__c> aem=[select id,Name,First_name__c from Antra_Employee__c];
        map<id,Antra_Employee__c> projectmap=new map<id,Antra_Employee__c>();
        for(Antra_Employee__c a:aem){
            projectmap.put(a.Id,a);
            anp.Antra_Employee__c=a.Id;
        }*/
        insert anp;
    }
}