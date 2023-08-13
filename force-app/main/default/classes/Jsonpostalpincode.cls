public class Jsonpostalpincode {
    
    public string url {set;get;}
    public string pincode {set;get;}
    public string body {set;get;}
    public string city {set;get;}    
    public void main(){
        Http p = new http() ;
        HttpRequest request = new HttpRequest();
        url ='https://api.postalpincode.in/pincode/';
           url= url+pincode;
        request.setEndpoint(url);
        request.setMethod('GET');
        HttpResponse response = p.send(request);
        body=response.getBody();
        string jsonstring = response.getBody();
        system.JSONParser jp = json.createParser(jsonString);
        city='';
        while(jp.nextToken()!=null){
            if(jp.getText()=='circle'){
                jp.nextToken();
                city=jp.getText();
            }
        }
    }
}