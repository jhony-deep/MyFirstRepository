public class whatsapp_list {
 public static VOID sendtemplate(list<string> phone){
      //  account con = [select id , name , phone from account where id='0015i00000WNj0IAAT'];
     for(string n : phone){
       string whatsappnumber=n;
        
       // string whatsappnumber= '91' +con.Phone;
      system.debug('whatsappnumber'+whatsappnumber);
        Http p = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://graph.facebook.com/v16.0/103940495942637/messages');
        req.setMethod('POST');
        req.setHeader('Content-Type',' application/json');
        string accessToken='EAAJFEddvLBgBACjZBZBpGeJmhuSFxW5ZBuOzipugwA7mCn9V7k2Yamlf2mieYbvwZA49aiGvMXFhahvFNfpi1raLmm2emvKrxyIbBQ3ZB4ZCYGhec9P4kcGvZA7C11zQ30tjO6jaSzTeZB2SborqZA6Huoprh3QZAScCxJmviFAXtbIDcRENHM4X8UcmZAZAEVYIDh0ox5jnKzNCdxjco07AaUgPfSZCYlpJi6m4ZD';
        req.setHeader('Authorization', 'Bearer '+accessToken);
              string body='{ \"messaging_product\": \"whatsapp\", \"to\":'+whatsappnumber+', \"type\": \"template\", \"template\": { \"name\": \"hello_world  \", \"language\": { \"code\": \"en_US\" } } }';
        req.setBody(body);
        HttpResponse res = p.send(req);
        if(res.getStatusCode()==200){
            system.debug('true');
           
        }
         system.debug('false'); }
 }
  }