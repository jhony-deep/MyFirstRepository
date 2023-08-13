public class pagination_ex_1 {
    public apexpages.StandardSetController controller {set;get;}
    public integer nopage {set;get;}
    
    public list<opportunity> getopty(){
 list<opportunity> opty = (list<opportunity>)controller.getRecords();
        return opty;
    }
    public pagination_ex_1(){
        list<Opportunity> opty = [select  id ,name , stagename, closedate, amount from opportunity];
        controller = new apexpages.StandardSetController(opty);
        controller.setPageSize(5);
        integer size = controller.getResultSize();
        integer val = math.mod(size, 5);
        if(val>0){
            nopage =(integer)(math.floor(size/5)+1);
        }else{
  nopage =(integer)(math.floor(size/5));            
            
        }
    }
}