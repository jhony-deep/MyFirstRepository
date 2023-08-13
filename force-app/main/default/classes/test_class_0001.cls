public class test_class_0001 {
public account acc;
    public void create(){
        acc = new account();
        acc.name = 'pritam';
        acc.phone = '55555';
        insert acc;
    }
    
    public void updatehaeck(){
       
         list<account> a =[select name from account where createdDate=today];
        for (account ab : a){
            ab.name = 'kunal';
        }
        update a;
    }
    public void deletwa(){
list<account> acc = [select name from account where createddate = today];
        delete acc;  
    }
}