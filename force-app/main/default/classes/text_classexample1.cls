@istest
public class text_classexample1 {

    @istest
   public  static void testme(){
        text_class_example1 et = new text_class_example1();
        et.invoke();
        system.assertEquals('kunal', et.name);
        system.assertEquals('ranchi', et.city);
          
        et.call();
        system.assertEquals('vaneet', et.name);
        system.assertEquals('himachal', et.city);
        
    }
}