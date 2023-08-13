public class SCHEMA_EXAMPLE_1 {
    public map<string,object> resmap {set;get;}
    public SCHEMA_EXAMPLE_1(){
        resmap = new map<string,object>();
        schema.DescribeSObjectResult result = account.sobjecttype.getdescribe();
        resmap.put('label',result.getLabel());
        resmap.put('create', result.isCreateable());
        resmap.put('name', result.getName());
        resmap.put('update', result.isUpdateable());
        
        
        
    }
    
    
    
}