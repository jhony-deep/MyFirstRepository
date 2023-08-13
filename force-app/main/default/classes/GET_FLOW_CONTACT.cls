public class GET_FLOW_CONTACT {
//@InvocableMethod
    public static list<MY_NGO_DON_CHILD__c> main(list<id> Ids){
        list<MY_NGO_DON_CHILD__c>Mychilds=[SELECT Id, My_NGO_CONTACT_ID__c, DAUGHTER_NAME_2__c, DAUGHTER_NAME_1__c, SON_NAME_2__c, 
                                   SON_NAME_1__c, WIFE__c, SELF__c, MOTHER_NAME__c, FATHER_NAME__c FROM MY_NGO_DON_CHILD__c where My_NGO_CONTACT_ID__c in:ids ];
        system.debug(mychilds);
        return mychilds;
    }
}