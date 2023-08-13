public class future_trigger {
    string city;
@future(callout=true)
    public static void main(set<id> accid){
        string city='';
        list<rental_unit__c> rent = [ SELECT Id, pincode__c, Appliances__c FROM rental_unit__c where id in:accid];
        for( rental_unit__c r : rent){
            Http p = new Http();
            HttpRequest request = new HttpRequest();
            request.setMethod('GET');
            request.setEndpoint('https://api.postalpincode.in/pincode/'+r.pincode__c);
            
            HttpResponse response=p.send(request);
            string result = response.getBody();
            system.JSONParser jp = json.createParser(result);
            while(jp.nextToken()!=null){
                if(jp.getText()=='name'){
                    jp.nextToken();
                     city = jp.getText();
                }
            }
            r.city__c=city;
        }
        update rent;
    }
}