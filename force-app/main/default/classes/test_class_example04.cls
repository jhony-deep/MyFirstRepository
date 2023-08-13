@istest
public class test_class_example04 {

    @istest
    public static void getme(){
        
        test_class_example4 et = new test_class_example4();
        et.create();
        integer count = [select count() from account where name = 'kunal'];
        system.assertEquals(1,count);
        
    }
    
    @istest 
    public static void updatecahek(){
        ///for account update we have to rate some record first ..so we use test factory for new reord
       test_factory.crearetestdata();
        test_class_example4 rt = new test_class_example4();
        rt.updatedata();
     //   system.assertEquals('hot', rt.rating);
        account acc = [select id , name , rating from account where createDdate = today];
        system.assertEquals('Hot', acc.Rating);
        
    }
    @istest 
    public static void deteacc(){
        test_factory.crearetestdata();
          test_class_example4 rt = new test_class_example4();
        rt.deletewa();
 integer count = [select count() from account where createddate=today];
        system.assertEquals(0,count);
        
    }
}