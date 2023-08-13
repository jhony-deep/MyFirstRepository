public class jsonpaarseacectokenexapmle {

    public string jsonString {set;get;}
    public string valuetoken {set;get;}
    public void gettoken(){
        system.JSONParser jp = json.createParser(jsonString);
        while(jp.nextToken()!=null){
            if(jp.getText()=='updated_at'){
                jp.nextToken();
                valuetoken=jp.getText();
            }
        }
        
    }
}