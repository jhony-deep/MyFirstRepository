public class flows {
    
    public list<account>acc {set;get;}
 
    public void  main(){
       acc=[select id , name , phone,createddate from account where createddate=today];
    }
    
}