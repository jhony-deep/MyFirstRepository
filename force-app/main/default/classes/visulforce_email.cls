public class visulforce_email {
    public contact con {set;get;}
    
    public visulforce_email(apexpages.standardcontroller controller)
    {
    string[] fields = new string[]{'lastname','firstname','phone','email'};
        controller.addFields(fields);
    con = (contact)controller.getRecord();
    }
    public pageReference sendemail(){
        messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        string[]toadd = new string[]{con.Email};
            system.debug(toadd);
            msg.setsubject('stay_in _touch+alert');
        string body ='<h2> dear customer ,<br/>';
            body = body + 'lastname :'+con.lastname;
        body=body+'<br/> phone :'+con.Phone;
        body = body+'<br/> please update the latest contact details';
        msg.setHtmlBody(body);
        msg.setToAddresses(toadd);
        messaging.Email[] emails = new messaging.Email[]{msg};
            messaging.sendemail(emails);
        pagereference p = new pagereference('/'+con.Id);
        return p;
    }}