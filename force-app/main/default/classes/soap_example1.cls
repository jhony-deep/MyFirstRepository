public class soap_example1 {
    public string username {set;get;}
    public string accname {set;get;}
    public string password {set;get;}
    public string accindustry {set;get;}
    public string result {set;get;}
    public string status {set;get;}
    public void main(){
        Partner_example.Soap sp = new Partner_example.soap();
        Partner_example.LoginResult logindetails = new  Partner_example.LoginResult();
            logindetails=sp.login(username,password);
        result= 'sessionId:'+logindetails.sessionId;
       // result=username +password;
       //       soap_example_2.soap_example2 spa = new soap_example_2.soap_example2 ();
      //  soap_example_2.SessionHeader_element head = new soap_example_2.SessionHeader_element();
      //  head.sessionId=logindetails.sessionId;
      //  spa.SessionHeader=head;
       // status=spa.create(accname,accindustry);
      SOAPEXAMPLE_3.soap_example_3 spa = new SOAPEXAMPLE_3.soap_example_3  ();
        SOAPEXAMPLE_3.SessionHeader_element head = new SOAPEXAMPLE_3.SessionHeader_element();
        head.sessionId=logindetails.sessionId;
        spa.SessionHeader=head;
        status=spa.create(accname,accindustry);
    }
}