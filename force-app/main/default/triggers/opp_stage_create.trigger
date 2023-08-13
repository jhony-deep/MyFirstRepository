trigger opp_stage_create on Opportunity (after update) {
    
    map<id,opportunity> oldmap = trigger.oldmap;
     map<id,opportunity> newmap = trigger.newmap;
    set<id> keys = oldmap.keySet();
    
    list<STUDENT__c> stu = new list<STUDENT__c>();
    for (id k : keys){
       opportunity old = oldmap.get(k);
        opportunity newopt = newmap.get(k);
        if(old.StageName!='colsed won' && newopt.StageName=='closed won'){
            STUDENT__c st = new STUDENT__c();
            st.Student_Name__c='trigger';
            st.Course_Offered__c='a055i00000FIyII';
            st.required__c=8;
            stu.add(st);
            
        }
        
    }
    insert stu;

}