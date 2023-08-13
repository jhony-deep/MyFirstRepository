trigger custom_setting_examole on Case (before insert) {

    office__c c = office__c.getinstance(userinfo.getUserId());
    if(c.flag__c==true ){
        for (case s :trigger.new){
            s.subject ='updated from trigger';
        }
    }
    
}