public class delete_visualforce {
    public list<account> acc {set;get;}
    public delete_visualforce(apexpages.StandardsetController controller){
        list<string> fields = new list<string>{'id','name','industry','rating','phone'};
            controller.addFields(fields);
        acc=(list<account>)Controller.getSelected();
    }
    public pagereference deletedata(){
        delete acc;
        pagereference p = new pagereference ('/003');
        return p;
    }
    
}