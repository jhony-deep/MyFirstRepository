public class apex_component {

    @auraenabled
    public static string kunal(string firstname , string lastname){
        string name = 'your name is :'+firstname+':'+lastname;
         system.debug(name);
        return name;
       
    }
}