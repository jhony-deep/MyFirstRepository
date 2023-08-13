public class Practice {

    public string jsonstring {set;get;}
     public string xmlstring {set;get;}
    public Account acc {set;get;}
    public void Practice(){
        
        dom.Document doc = new dom.Document();
        dom.XmlNode root = doc.createRootElement('person',null,null);
        try{
            list<account> acc = [select id from account where createdDate=last_week];
            
          delete acc;
            dom.XmlNode child =root.addChildElement('child',null,null);
        child.addTextNode('Name');
         dom.XmlNode Phone =root.addChildElement('Phone',null,null);
        Phone.addTextNode('Name');
        }catch(exception e){
                dom.XmlNode child =root.addChildElement('child',null,null);
        child.addTextNode('Error'+e.getMessage());
        }
        jsonstring=doc.toXmlString();
        dom.Document doc1= new dom.Document();
        doc1.load(jsonstring);
        dom.XmlNode root1 = doc1.getRootElement();
        xmlstring=root1.getName();
        list<dom.XmlNode>childs=root1.getChildElements();
        for(dom.XmlNode k :childs){
            xmlstring=xmlstring+'\n'+'=='+k.getText();
        }
        
        
       
    }
}