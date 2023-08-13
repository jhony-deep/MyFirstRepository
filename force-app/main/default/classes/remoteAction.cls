public class remoteAction {

    @RemoteAction
    
    public static string callme(string name){
        string result = 'My name is : '+name;
        return result;
    }
}