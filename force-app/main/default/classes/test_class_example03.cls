@istest
public class test_class_example03 {
@istest
    public static void getme(){
        test_class_example3 et = new test_class_example3();
        et.industry='banking';
        et.invoke();
        system.assertEquals('hot',et.rating);
        system.assertEquals('public', et.ownership);
        et.industry='';
        et.invoke();
        system.assertEquals('warm',et.rating);
        system.assertEquals('private', et.ownership);
        
        
        
    }
    
    
    
    
}