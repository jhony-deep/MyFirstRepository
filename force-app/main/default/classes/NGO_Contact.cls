public class NGO_Contact {
@invocablemethod
    public static void main(){
        list<NGO_Contact__c> Mylist= [SELECT Id, Name__c, Phone__c, Email__c FROM NGO_Contact__c];
        
    }
}