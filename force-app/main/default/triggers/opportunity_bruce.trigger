trigger opportunity_bruce on Opportunity (after insert) {

    list<opportunity> opp = trigger.new;
    user u =[select id from user where alias ='bwayn'];
    list<OpportunityTeamMember> opt = new list<OpportunityTeamMember>();
    for (opportunity p :opp){
        if(p.type=='new customer'){
            opportunityTeamMember ot = new OpportunityTeamMember();
            ot.userid=u.id;
            ot.opportunityid=p.id;
            ot.opportunityaccesslevel='read';
            ot.TeamMemberRole='account manager';
            opt.add(ot);
          
        }
        insert opt;
    }
    
}