public class xmlexampleaccoutnw {
    public string result {set;get;}
    public string searchtext {set;get;}
    public void getdata(){
     Account acc= [select Name , Phone ,Industry ,(select LastName , FirstName , Phone from contacts) from account where Name=:searchtext];
        dom.Document doc = new dom.Document();
      dom.XmlNode root = doc.createRootElement('company',null,null);
        root.setAttribute('name',acc.Name);
        root.setAttribute('industry',acc.Industry);
        root.setAttribute('phone',acc.Phone);
        dom.XmlNode head = root.addChildElement('Header',null,null);
        head.setAttribute('status','success');
          head.setAttribute('persons',''+acc.contacts.size());
        if(acc.contacts.size()>0){
            for(contact c :acc.contacts){
                dom.XmlNode person = root.addChildElement('person',null,null);
                dom.XmlNode lastname = person.addChildElement('LastName',null,null);
                 dom.XmlNode firstname = person.addChildElement('FirstName',null,null);
                 dom.XmlNode phone = person.addChildElement('Phone',null,null);
                lastname.addTextNode(c.LastName);
                      firstname.addTextNode(c.FirstName);
                Phone.addTextNode(c.Phone);
            }
        }
        result = doc.toXmlString();
    }
}