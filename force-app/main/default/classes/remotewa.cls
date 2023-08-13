public class remotewa {
    public list<contact> con {set;get;}
@remoteaction
    public static string main(string name){
        account acc=[select id from account where name =:name];
        list<contact>con=[select lastname , firstname from contact where accountId=:acc.id ];
        string co = json.serialize(con);
        return co;
        
    }
    
}