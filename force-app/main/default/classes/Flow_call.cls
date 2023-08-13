public class Flow_call {
@InvocableMethod
    public static list<MY_NGO_RELATION_DETAILS__c> main(){
      list<MY_NGO_RELATION_DETAILS__c>mylist=[SELECT Relation_Name__c, Other_Relation_Type__c, Relation_Type__c, Id FROM MY_NGO_RELATION_DETAILS__c where createddate=today ];
       // system.debug(mylist);
     return mylist;
    }
}