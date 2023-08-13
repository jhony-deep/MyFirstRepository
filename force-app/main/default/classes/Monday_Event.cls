public class Monday_Event {
    @AuraEnabled
    public static list<contact> main(string name){
        account acc = [select id from account where name=:name];
        
       list<contact> con =[select lastname , firstname , phone ,LeadSource from contact where accountId=:acc.id ];
        return con;
    }
     @AuraEnabled
    public static list<opportunity> main1(string name){
        account acc = [select id from account where name=:name];
        
       list<opportunity> con =[select name , stagename , amount from opportunity where accountId=:acc.id ];
        return con;
    }

}