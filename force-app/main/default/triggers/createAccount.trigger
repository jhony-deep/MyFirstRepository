trigger createAccount on Account (before insert) {

    for(account a : trigger.new){
        a.industry='banking';
        a.rating='warm';
    }
}