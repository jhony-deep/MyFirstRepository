public class revision_pagination {

    public apexpages.StandardSetController controller {set;get;}
    public integer page_no {set;get;}
    public list<account> getacc(){
        list<account> acc = (list<account>)controller.getRecords();
        return acc;
    }
    public revision_pagination(){
        list<account> acc = [select name , phone ,rating, industry from account order by name];
        controller = new apexpages.StandardSetController(acc);
        controller.setPageSize(8);
        integer size = controller.getResultSize();
        integer value = math.mod(size,8);
        if(value>0){
            page_no =(integer)(math.floor(size/8))+1;
        }else{
             page_no =(integer)(math.floor(size/8)); 
        }
        
    }
}