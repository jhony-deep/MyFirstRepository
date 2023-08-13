public class http_example {
    public string result {set;get;}
    public string endpoint {set;get;}
    public string body     {set;get;}
    public void call(){
        result='';
        Http p = new Http();
        httpRequest request = new httpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        HttpResponse response = p.send(request);
        body=response.getBody();
       
       dom.Document doc = new dom.Document();
        doc.load(body);
        dom.XmlNode root = doc.getRootElement();
            result=result+'\n'+root.getName();
        list<dom.XmlNode> books = root.getchildElements();
        for(dom.XmlNode bk : books){
         result=result+'\n'+bk.getName();
                list<dom.XmlNode> childs = bk.getchildElements();
            for(dom.XmlNode c : childs){
                  result=result+'=='+c.getName()+':'+c.getText();
            }
        }
        
        
        
        
    }
}