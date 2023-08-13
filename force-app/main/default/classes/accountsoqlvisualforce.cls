public class accountsoqlvisualforce {
    
    public list<opportunity> opp {set;get;}
    
    public accountsoqlvisualforce(){
        
    opp =[select id , name,	LeadSource,StageName,Type,CloseDate from opportunity limit 5 ];
       
    }
}