public class Batchable_Example_4 implements database.Batchable<sobject>,database.stateful{

    public string name;
    public database.QueryLocator start(Database.BatchableContext bc){
       string lea='select id ,LastName, FirstName , LeadSource,Company from Lead';
         string name='kunal';
        name='vaneet';
        system.debug(name);
        return database.getQueryLocator(lea);
  
    }
    public void execute(Database.BatchableContext bc, List<Lead> lea){
        for(Lead a : lea){
            a.company='agriculture';
        }
        update lea;
         
        system.debug(name);
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Your updation_2 is completed successfullly');
        
        system.debug(name);
    }
}