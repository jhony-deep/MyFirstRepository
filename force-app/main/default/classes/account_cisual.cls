public class account_cisual {
    public list<Account>accounts{set;get;}
    
    public account_cisual(){
        accounts=[select Id, name, phone , industry from Account];
    }
    public void limit5(){
       accounts=[select Id, name, phone , industry from Account  where industry='education'];
    }
   public void count2(){
        integer count = 2;
      accounts=[select Id, name, phone , industry from Account limit 2 offset 2];
        
    }
    
}