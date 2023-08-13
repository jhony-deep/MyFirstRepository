public class studentvisual_apex1 {

    public list<SelectOption> options {set ;get;}
    public string selected {set;get;}
    public list<STUDENT__c> stu {set;get;}
    
    public studentvisual_apex1(){
        
        options = new list<selectoption>();
        list<string>course = new list<string>{'java','PYTHON','electrical','IT and Technology'};
            selectoption n = new selectoption('none','-none-');
        options.add(n);
            for (string s : course){
                
                selectoption op = new selectoption(s,s);
                options.add(op);
            }
        
        
    }
    public void student(){
        stu=[SELECT Id, Student_Name__c, Student_Email__c, Mobile_number__c,
             Status_of_approval__c, State__c, course_name__c FROM STUDENT__c
             where course_name__c=:selected order by Student_Name__c];
        
    }
    
    
}