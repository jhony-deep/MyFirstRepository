public class xmldesrialzeexapmle {

    public string xmlstring {set;get;}
    public string result {set;get;}
    
    public void convert(){
        dom.Document doc = new dom.Document();
        doc.load(xmlstring);
        dom.XmlNode root = doc.getRootElement();
        result = root.getName();
        list<dom.XmlNode> childs = root.getChildElements();
        for( dom.XmlNode c : childs){
            result = result+'\n'+c.getName()+' :'+c.getText();
        }
        
        
    }
}