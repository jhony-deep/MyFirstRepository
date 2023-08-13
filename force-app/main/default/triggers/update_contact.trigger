trigger update_contact on Contact (after insert , after update) {
    system.debug('code is working');
    if(trigger.isInsert && trigger.isAfter){
    for(contact c : trigger.new){
        if(c.AccountId!=null){
            list<account>acc=[select id ,   count_contact__c from account];
            for(account a : acc){
                if(a.id==c.AccountId){
                    a.count_contact__c+=1;
                }
            }
            update acc;
        }
    }
}
    if(trigger.isUpdate && trigger.isAfter){
    for(contact c : trigger.new){
        if(c.AccountId==null){
            list<account>acc=[select id ,   count_contact__c from account];
            for(account a : acc){
                if(a.id==c.AccountId){
                    a.count_contact__c+=1;
                }
            }
            update acc;
        }
    }
}
}