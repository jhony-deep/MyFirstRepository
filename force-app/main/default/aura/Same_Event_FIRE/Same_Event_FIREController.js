({
	invoke : function(component, event, helper) {
		var evt=component.getEvent("two");
        evt.setParams({"empname":"kunal"});
        evt.fire();
	},
    show : function(component, event, helper) {
        var name=event.getParam("empname");
        alert(name);
        component.set("v.name",name);
        
    }
})