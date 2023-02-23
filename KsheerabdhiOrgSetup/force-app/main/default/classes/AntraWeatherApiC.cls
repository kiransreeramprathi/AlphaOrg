public class AntraWeatherApiC {
    public string cityname{get;set;}
    public decimal  temperature{get;set;}
    public decimal contemp{get;set;}
    public void citytemperature(){
        Http htt = new http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.openweathermap.org/data/2.5/weather?q='+cityname+'&appid=21161cc9f853bf097c1e558d72543a2a');
        request.setMethod('GET');
        HttpResponse response = htt.send(request);
         temperature = 0.0;
        if(response.getStatusCode()==200){
            map<string,object> result = (map<string,object>)JSON.deserializeUntyped(response.getBody());
            map<string,object> mymap = (map<string,object>)result.get('main');
            temperature = (decimal)mymap.get('temp');
            contemp=temperature-273;
        }
        
    }
}