@istest
public class test_batchableexample01 {

    @istest
    public static void testme(){
        test_btchapex_example k = new test_btchapex_example();
        test.startTest();
        id jobid = database.executeBatch(k,5);
        test.stopTest();
        Account acc = [select id ,Rating, ownership from Account];
        system.assertEquals('Cold',acc.Rating);
         system.assertEquals('Private',acc.ownership);
    }
}