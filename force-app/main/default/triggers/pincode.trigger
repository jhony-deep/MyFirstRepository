trigger pincode on rental_unit__c (after insert) {
map<id,object>mymap=trigger.newmap;
    set<id>myid=mymap.keySet();
    future_trigger.main(myid);
}