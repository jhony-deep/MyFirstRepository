public class accountsoql {
@auraenabled
    public static list<opportunity> getopp(string accname){
        account acc = [select id from account where name=:accname];
        list<opportunity> opp =[select id , name,	LeadSource,StageName,Type,CloseDate from opportunity where accountid=:acc.id ];
        return opp;
    }
}