public class schema_examle_4 {

    public list<string> objects {set;get;}
    
    public schema_examle_4(){
        objects = new list<string>();
        map<string,schema.SObjectType> objmap = schema.getGlobalDescribe();
        set<string> keys= objmap.keyset();
        objects.addAll(keys);
      //  for(string k :keys){
         //   schema.SobjectType obj = objmap.get(k);
         //   schema.DescribeSObjectResult results = obj.getdescribe();
         //   if(results.isCustom()){
      // objects.add(k);      
            
            
        }
        
        

        
        
    
    
}