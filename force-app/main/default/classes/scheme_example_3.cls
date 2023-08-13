public class scheme_example_3 {

    public list<string> label {set;get;}
    public scheme_example_3(){
        label = new list<string>();
        schema.DescribeFieldResult result = account.industry.getdescribe();
        if (result.getType()==schema.DisplayType.PICKLIST){
            list<schema.PicklistEntry> mylist = result.getpicklistvalues();
            for (schema.PicklistEntry p : mylist){
                label.add(p.getlabel());
            }
                
        }
        
    }
}