trigger contact_triger on Contact (after insert) {

    list<contact>con=trigger.new;
    for(contact c : con){
        if(c.AccountId==null){
            c.AccountId='0015i00000SM6CB';
        }
    }
 update con;
    
}