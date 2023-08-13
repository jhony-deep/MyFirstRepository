trigger opportunity_1 on Opportunity (before insert) {
list<opportunity> opp = trigger.new;
    for (opportunity p :opp){
        p.stagename='prospecting';
        p.closedate = system.today()+15;
        p.amount=50000;
    }
    
}