trigger DONATION on My_NGO_DONATION__c (before insert , BEFORE UPDATE) {

    FOR(My_NGO_DONATION__c K : TRIGGER.NEW){
        My_NGO_MAIN__c MYLIST=[SELECT ID ,Primary_Email__c FROM My_NGO_MAIN__c WHERE ID=:K.My_NGO_CONTACT__c];
        K.Owner_EmailID__c=MYLIST.Primary_Email__c;
    }
}