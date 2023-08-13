trigger course_student on COURSE__c (after insert) {

    list<COURSE__c> c = trigger.new;
    
    list<STUDENT__c> stu = new list<STUDENT__c>();
    for ( COURSE__c co : c){
        STUDENT__c s = new STUDENT__c();
       s.Student_Name__c='kunal';
        s.student_no__c=2;
        s.Course_Offered__c=co.id;
        s.required__c=8;
        
        stu.add(s);
    }
    insert stu;
}