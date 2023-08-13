({
	invoke : function(component, event, helper) {
		var name =event.getParam("empname");
        component.set("v.myname",name);
        alert(name);
        var action=component.get("c.main");
        action.setParams({"leadsource":name});
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==='SUCCESS'){
                var result = response.getReturnValue();
                component.set("v.record",result);
            }
        });
        $A.enqueueAction(action);
	}
})