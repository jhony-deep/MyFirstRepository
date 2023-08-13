trigger accountstiger on Account (before insert,before update , after update) {
    list<account>acc = trigger.new;
    for(account a :acc){
        if(string.isBlank(a.rating)&&trigger.IsInsert){
            a.adderror('this is a error message');
        }
       if(a.Industry=='agriculture'&& trigger.oldmap.get(a.Id).industry=='banking'){
           a.industry.adderror('this is a error Industry message'); 
       }
    }
    
    }