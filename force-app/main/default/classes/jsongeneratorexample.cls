public class jsongeneratorexample {

    public string name {set;get;}
    public string phone {set;get;}
    public decimal annualrevenue {set;get;}
    public string result {set;get;}
    
    public void create(){
        system.JSONGenerator js = json.createGenerator(true);
        js.writeStartObject();
        Account acc = new account();
        try{
            acc.Name=name;
            acc.Phone=phone;
            acc.AnnualRevenue=annualrevenue; 
            insert acc;
            js.writeStringField('kya hua', 'success');
            js.writeIdField('Id', acc.Id);
        }
        catch(exception e){
            js.writeStringField('kya hua', 'failed');
            js.writeStringField('Error',e.getMessage());
        }
        js.writeEndObject();
        result=js.getAsString();
            
            
            
            
        }
        
        
        
        
    }