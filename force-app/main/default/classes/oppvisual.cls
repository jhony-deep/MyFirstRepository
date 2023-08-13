public class oppvisual {
    public list<opportunity>opp {set;get;}
    public oppvisual(){
        opp=[SELECT LeadSource, Id, Name, StageName, ExpectedRevenue FROM Opportunity];
    }
    public void limit10(){
          opp=[SELECT LeadSource, Id, Name, StageName, ExpectedRevenue FROM Opportunity order by  ExpectedRevenue desc];
    }
    
}