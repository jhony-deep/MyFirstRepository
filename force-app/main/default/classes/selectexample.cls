public class selectexample {
@AuraEnabled
    public static list<string> hey(){
        
        list<string> k = new list<string>();
        k.add('hello');
        k.add('hello');
        k.add('hello');
        k.add('hello');
        k.add('hello');
        return k;
    }
    
}