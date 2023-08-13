({
	show : function(component, event, helper) {
		var evt = component.getEvent("one");
        evt.setParams({"empname":"web"});
        evt.fire();
	}
})