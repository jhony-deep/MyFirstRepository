@istest
public class testclass0001 {

    @istest
    public static void checkcreate(){
        test_class_0001 k = new test_class_0001();
        k.create();
        
        integer count = [select count() from account where createdDate = today];
        system.assertEquals(1, count);
    }
    @istest
    public static void updatechake(){
        account a = new account();
        a.name='pritam';
        insert a;
         test_class_0001 k = new test_class_0001();
        k.updatehaeck();
        account av = [select name from account where createddate = today];
        system.assertEquals('kunal',av.name);
    }
    @istest
    public static void deleteware(){
        account a = new account();
        a.name='pritam';
        insert a;
         test_class_0001 k = new test_class_0001();
        k.deletwa();
        integer count =[select count() from account where createddate = today];
        system.assertEquals(0, count);
    }
}