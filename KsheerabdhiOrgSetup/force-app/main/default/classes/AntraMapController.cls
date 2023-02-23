public class AntraMapController {
    public string ipvalue{get;set;}
    public string opval{get;set;}
    public void search(){
        HttpRequest req=new HttpRequest();
        req.setEndpoint('https://maps.googleapis.com/maps/api/place/autocomplete/json?input='+ipvalue+'?apiKey=AIzaSyAFcBRALyUf3EzH2kSsxtNTKt_R4LpnWZk');
        req.setMethod('GET');
        Http h=new Http();
        HttpResponse r=h.send(req);
        if(r.getStatusCode()==200){
            string body =r.getBody();
            opval=r.getBody();
        }
    }
}