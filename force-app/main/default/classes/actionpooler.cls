public class actionpooler {

    public string result {set;get;}
    public integer count {set;get;}
    
    public actionpooler(){
        count = 0;
        result='Current Time is : '+system.now()+' count is '+count;
    }
     public void callme(){
        count = count+1;
        result='Current Time is : '+system.now()+' count is '+count;
    }
    
}