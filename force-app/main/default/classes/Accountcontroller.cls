public class Accountcontroller {

    @auraEnabled
        
    public static list<Account> getaccounts(){
        
        list<Account> acclst= new list<Account>();
        acclst = [select id,Name from Account];
        
        return acclst;
    }
}