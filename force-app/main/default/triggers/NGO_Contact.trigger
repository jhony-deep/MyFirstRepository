trigger NGO_Contact on NGO_Contact__c (before insert) {

    for(NGO_Contact__c con : trigger.new){
        list<NGO_Contact__c> mylist = [SELECT Id, Name__c, Phone__c, Email__c FROM NGO_Contact__c];
        for(NGO_Contact__c my : mylist){
            if(con.Name__c==my.Name__c){
                con.addError('Name is Duplicate');
            }
            if(con.Phone__c==my.Phone__c){
                con.addError('Phone is Duplicate');
            }
            if(con.Email__c==my.Email__c){
                con.addError('Email is Duplicate');
            }
        }
     
    }
}