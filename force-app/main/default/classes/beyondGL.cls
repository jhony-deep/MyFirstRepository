public class beyondGL implements database.Batchable <sobject>{
    
    public database.QueryLocator start(Database.BatchableContext bc){
        string query='select name , phone , rating from account';
        
return Database.getQueryLocator(query);
    }
   public  void  execute(Database.BatchableContext bc, List<account> acc){
        
       for(account a : acc){
           a.phone='999990000';
       }
       update acc;
    }
    public void  finish(Database.BatchableContext bc){
           list<account>acc=[select name , phone , rating from account limit 4];
        for(account A : acc){
        system.debug(A.phone);
        }
    }    
}