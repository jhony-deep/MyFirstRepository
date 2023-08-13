trigger leadtstiger1 on Lead (before insert, after update, before update,after insert) {
SYSTEM.debug(TRIGGER.ISEXECUTING);
    SYSTEM.debug(TRIGGER.OPERATIONTYPE);
    list<lead>leads= trigger.new;
    for(lead l : leads){
        if(l.Status=='Closed - Converted' && trigger.oldmap.get(l.Id).status=='Open - Not Contacted'){
            l.status.addError('you cannt change the lead directly to closed');
        }
        
    }
    
}