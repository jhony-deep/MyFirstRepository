public class contact_list {
@auraenabled
    
    public static STUDENT__c main( string name){
        STUDENT__c stu =[select id,course_name__c,Student_Email__c,Mobile_number__c,Student_Name__c from STUDENT__c where Student_Name__c=:name];
        return stu;
        
        
    }
    
}