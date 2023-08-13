public class apexclassexample2 {

    public Opportunity opp {set;get;}
     public contact con {set;get;}
    public apexclassexample2 (){
        opp = new opportunity();
        opp.Amount=998589;
  
        opp.Name='kunnal';
        opp.LeadSource='Trade Show';
       
        
        con = new contact();
        
    }
}