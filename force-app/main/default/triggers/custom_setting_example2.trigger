trigger custom_setting_example2 on STUDENT__c (before update) {
 office__c c = office__c.getinstance(userinfo.getUserId());
    if(c.flag__c==true ){
        for (student__c s :trigger.new){
            s.Student_Email__c ='trigger@gmail.com';
        }
    }
    

}