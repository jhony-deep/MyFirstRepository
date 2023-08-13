public class xmlacccountsoql {

    public string name {set;get;} 
    public list<contact> con {set;get;}
    
    public void getdata(){
        Account acc = [select name , id ,(select lastname , firstname , phone from contacts) from account where name=:name];
        con = acc.contacts;
        
    }
    
}