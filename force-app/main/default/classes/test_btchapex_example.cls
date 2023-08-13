global class test_btchapex_example implements database.Batchable<sobject> {

    global database.QueryLocator start (database.BatchableContext bc){
        return database.getQueryLocator('select name, id , rating from account');
    }
    global void execute(database.BatchableContext bc , list<account> accounts){
        for ( account a :accounts){
            a.rating ='cold';
            a.ownership='private';
        }
        update accounts;
    }
    global void finish(database.BatchableContext bc){
        
    }
        
        
    
}