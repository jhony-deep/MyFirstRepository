public class accountsoqlcomponent {
@auraEnabled
    public static list<opportunity> main(string indus){
        list<opportunity> acc =[SELECT Id, AccountId, Name, ExpectedRevenue, LeadSource, Type FROM Opportunity where AccountId =:indus];
        return acc;
        
    }
  @auraEnabled  
      public static list<contact> man(string lea){
        list<contact> acc =[SELECT Id, AccountId, LastName, FirstName, Phone, LeadSource FROM Contact where AccountId =:lea];
        return acc;
        
    }
}