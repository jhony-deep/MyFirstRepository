public class xmlexapmle {

    public string result {set;get;}
    
    public xmlexapmle(){
        dom.Document doc = new dom.Document();
        dom.XmlNode root = doc.createRootElement('college',null,null);
      dom.XmlNode name = root.addChildElement('Name',null,null);
        name.addTextNode('CBIT');
        dom.XmlNode phone = root.addChildElement('phone',null,null);
        phone.addTextNode('858585');
        dom.XmlNode address = root.addChildElement('address',null,null);
        dom.XmlNode city = address.addChildElement('city',null,null);
        city.addTextNode('hyd');
        dom.XmlNode state =address.addChildElement('state',null,null);
        state.addTextNode('tg');
        result=doc.toXmlString();
    }
}