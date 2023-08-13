public class currencyslapeyr {

    public string status {set;get;}
    
    public void main (){
        map<string,Apikey__c> mymap = Apikey__c.getAll();
        Apikey__c ak = mymap.get('apikey');
        string key = ak.key__c;
        string url = 'https://apilayer.net/api/live?access_key ='+key;
        url = url +'&currencies=INR';
        url= url+'&source=usd&format=1';
        Http p = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod('GET');
        HttpResponse response = p.send(request);
        string body=response.getbody();
        string jsonstring = response.getbody();
        system.JSONParser jp = json.createParser(jsonString);
        while(jp.nextToken()!=null){
            if(jp.getText()=='USDINR'){
                jp.nextToken();
                decimal val = (decimal)jp.getDecimalValue();
                system.debug('INR :'+val);
              
            }
        }
          system.debug(url);
    }
}