public class createcontactviaglobalaction {

  @auraenabled
    
    public static string main(string lastname , string accid){
        contact con = new contact ();
            con.LastName=lastname;
       
        con.AccountId=accid;
        insert con;
        return con.Id;
        
        
        
        
        
    }
    
    
    
    
}