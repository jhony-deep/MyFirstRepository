trigger opp_share_user on Opportunity (after insert) {

list<opportunity> opp = trigger.new;
list<opportunityshare> ops = new list<opportunityshare>();
user u = [select id from user where alias = 'tstar'] ;
    
    for (opportunity o :opp){
        opportunityshare os = new opportunityshare();
        os.UserOrGroupId=u.id;
        os.OpportunityId=o.id;
        os.RowCause='manual';
        os.OpportunityAccessLevel='read';
        ops.add(os);
    }
    insert ops;
}