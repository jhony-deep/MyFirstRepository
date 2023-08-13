public class BatchApex_Example_5 implements database.Batchable<Lead> {

    public list<Lead> start(Database.BatchableContext bc){
        list<Lead>lea=[select id ,LastName, FirstName , LeadSource,Company from Lead];
        return lea;
    }
    public void execute(Database.BatchableContext bc, List<Lead> lea){
        for(Lead a : lea){
            a.company='LNT';
        }
        update lea;
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Your updation is completed successfullly');
    }
}