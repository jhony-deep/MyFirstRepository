public class schema_example_02 {
    
    public list<string> fields {set;get;}
    
    public schema_example_02(){
        schema.DescribeSObjectResult results = student__c.SobjectType.getdescribe();
        map<string,schema.SObjectField> fldmap = results.fields.getmap();
        set<string> key = fldmap.keyset();
       fields = new list<string>(key);
        
        
    }
}