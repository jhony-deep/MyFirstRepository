@istest
public class testclass {

    @testsetup
    public static void main(){
        for(integer i =0;i<5;i++){
           account acc = new account();
        acc.name='kunal'+i;
        acc.phone='6561313';
        insert acc; 
        }
        
    }
    
    @istest
    
    public static void mian(){
        integer count =[select count() from account];
        list<account> accou=[select id , name from account];
        system.debug(count);
        system.debug(accou);
    }
        
}