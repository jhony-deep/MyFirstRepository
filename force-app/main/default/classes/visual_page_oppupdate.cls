public class visual_page_oppupdate {

    public list<opportunity> opty {set;get;}
    public visual_page_oppupdate(apexpages.StandardSetController controller){
        list<string> fields = new list<string>{'name','stagename','closedate'};
            controller.addFields(fields);
        opty=(list<opportunity>)controller.getSelected();
    }
    public pagereference updatedata(){
        for(opportunity op : opty){
            op.stagename='closed won';
            op.closedate=system.today();
        }
        update opty;
            PageReference p = new PageReference ('/001');
        return p;
    }
}