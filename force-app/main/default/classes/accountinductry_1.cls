public class accountinductry_1 {
    public list<STUDENT__c> accounts {set;get;}
    
    public accountinductry_1(){
        
        accounts=[select Course_Fees__c ,Student_Name__c,course_name__c,mobile__c from STUDENT__c where course_name__c='electrical'or Student_Name__c='abhi' ];
        
        
    }
}