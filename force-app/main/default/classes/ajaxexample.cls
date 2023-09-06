public class ajaxexample {
//adedd for the testing purpose
    public list<Account> result {set;get;}
    public string phone {set;get;}
   public list<Lead> lea {set;get;}
    
    
    public void callmelater(){
        lea = [select lastname , firstname from lead limit 6];
    }
    
     public void callme(){
        result=[select name , phone , industry from account limit 5];
    }
    
}