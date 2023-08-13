trigger Create_Childs on Account (before insert,after insert) {
system.debug(''+trigger.operationType);
    if(trigger.isAfter){
        if(trigger.isInsert){
            for(account acc : trigger.new){
                if(acc.Create_Child_contact_recor__c==true){
                    contact con =new contact();
                    con.lastname= acc.Name;
                    con.phone=acc.Phone;
                    con.AccountId=acc.Id;
                    con.Description='This is description for the child contact'+acc.Description;
                    insert con;
                }   
                 if(acc.Create_Child_Opportunity_recor__c==true){
                    opportunity opp =new opportunity();
                     opp.name=acc.Name;
                     opp.CloseDate=system.today()+2;
                     opp.StageName='qualification';
                     opp.Description=acc.Description;
                     opp.AccountId=acc.Id;
                     insert opp;
                   
                } 
            }
        } 
                            }
        }