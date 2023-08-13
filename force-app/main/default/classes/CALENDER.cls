public class CALENDER {

  
    public string username {set;get;}
     public string password {set;get;}
     public string endpoint {set;get;}
     public string clientid {set;get;}
     public string clientsecert {set;get;}
     public string accessToken {set;get;}
     public string result {set;get;}
    public string body {set;get;}
        public  string value {set;get;}
    public  void gettoken (){
     Integration_stuff__c it = [select id, username__c,Password__c,consumerseceret__c,consumerkey__c from Integration_stuff__c where name='newApp'];  
        endpoint = 'https://api.prokerala.com/token';
        username=it.username__c;
         password=it.Password__c;
          clientsecert=it.consumerseceret__c;
          clientid=it.consumerkey__c;
        Http  p = New Http();
        HttpRequest request = New HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('POST');
        string body ='?grant_type=password';
        body = body +'&client_id=1c70b7e3-f990-4717-92b9-125f630e38a3';
        body = body +'&client_secret=ufBD8kN822oapZptEKdJYsoWBWr3V5buExQxqWmN';
       // body = body +'&username='+username;
        //body = body +'&password='+password;
        request.setBody(body);
        HttpResponse response = p.send(request);
        string result = response.getBody();
    system.JSONParser jp = json.createParser(result);
            while(jp.nextToken()!=null){
                if(jp.getText()=='access_token'){
                    jp.nextToken();
                    accessToken=jp.getText();
                }
            }
        system.debug(body);
        SYSTEM.DEBUG(accessToken);
    }
}