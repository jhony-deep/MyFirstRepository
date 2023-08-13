public class picklist_schema_exapmle {

    public static list<string> getData( string objName, string fldName){
        list<string> options = new list<string>();
        
 map<string,schema.SObjectType> objmap = schema.getGlobalDescribe();
        schema.SObjectType obj = objmap.get(objName);
        schema.DescribeSObjectResult objresult = obj.getDescribe();
map<string,schema.SObjectField> fldmap = objresult.fields.getmap();
        schema.SObjectField fld = fldmap.get(fldName);
        schema.DescribeFieldResult result=fld.getDescribe();
        if(result.getType()==schema.DisplayType.PICKLIST) {
            list<schema.PicklistEntry> entries = result.getPicklistValues();
             for(schema.PicklistEntry p : entries){
                 options.add(p.getvalue());
             }
        }
       
        return options;
    }
     
}





/*public class accountselectoption {

    public list<SelectOption> options {set;get;}
    public string selected {set;get;}
    public list<Account> accounts {set;get;}
    
    public accountselectoption(){
        options = new list<SelectOption>();
        
        list<string> INDUSTRY = new list<string>{'Banking','Education','Housing','Energy'};
            for( string s : INDUSTRY){
                SelectOption op = new SelectOption(s,s);
                options.add(op);
            }
            }
    public void show(){
        accounts=[select id , name , phone , industry from Account where industry =:selected];
        
    }    
}*/