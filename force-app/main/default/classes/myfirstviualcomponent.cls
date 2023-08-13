public class myfirstviualcomponent {
 public list<Account> acc {set;get;}
    public list<Contact> con  {set;get;}
    public list<string> accfields {set;get;}
    public list<string> confields {set;get;}
    
    public myfirstviualcomponent(){
        acc=[select id,Name,Phone,Industry from Account ];
        con=[select id,LastName,FirstName from Contact];
        list<string> accfields = new list<string>{'Name','Phone','Industry'};
          list<string> confields = new list<string>{'Lastname','Firstname'};
     
    }
    
    
}