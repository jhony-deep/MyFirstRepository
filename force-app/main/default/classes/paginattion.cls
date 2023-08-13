public class paginattion {
    
    public apexpages.StandardSetController controller {set;get;}
    public integer nopage {set;get;}
    public list<STUDENT__c> getstd(){
        list<STUDENT__c>std=(list<STUDENT__c>)controller.getRecords();
        return std;
    }
    public paginattion(){
        list<STUDENT__c>std=[SELECT Id, Name, Student_Email__c, Student_Name__c, Mobile_number__c, Status_of_approval__c, State__c, Course_Offered__c, Vehicle__c FROM STUDENT__c ];
        controller = new apexpages.StandardSetController(std);
        controller.setPageSize(6);
        integer size = controller.getResultSize();
        integer val=math.mod(size, 6);
        if(val>0){
          nopage=(integer)(math.floor(size/6)+1) ; 
        }else{
            nopage=(integer)(math.floor(size/6)) ; 
        }
    }

}