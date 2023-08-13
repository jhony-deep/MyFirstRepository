public class jsonprse {

    public map<string , object> resmap {set;get;}
    public string jsonstring {set;get;}
    
    public jsonprse(){
        system.JSONGenerator jp = json.createGenerator(true);
        jp.writeStartObject();
        jp.writeStringField('name','kunal');
        jp.writeNumberField('age',28);
        jp.writeFieldName('marks');
        jp.writeStartArray();
        jp.writeNumber(10);
         jp.writeNumber(20);
         jp.writeNumber(30);
        jp.writeEndArray();
        jp.writeEndObject();
        jsonstring = jp.getAsString();
    }
    public void getdata(){
        resmap = new map<string,object>();
        system.JSONParser js = json.createParser(jsonString);
        while(js.nextToken()!=null){
            resmap.put(js.getText(),''+js.getCurrentToken());
        }
        }
    }