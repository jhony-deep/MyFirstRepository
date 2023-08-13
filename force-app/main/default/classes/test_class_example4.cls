public class test_class_example4 {

    public account acc;
    
    public void create(){
        acc = new account();
        acc.name='kunal';
        acc.Phone='0653-8787';
        insert acc;
    }
    public void updatedata(){
        list <account> accounts = [select id, name , rating from account where createddate = today];
        FOR (ACCOUNT a : accounts){
            a.rating = 'hot';
            //system.debug(a.Rating);
        }
        update accounts;
        
    }
    public void deletewa(){
        account a = [select id , name from account where createddate = today];
        delete a;
    }
    
    
    
}