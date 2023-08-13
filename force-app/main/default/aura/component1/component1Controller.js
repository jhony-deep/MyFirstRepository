({
	show : function(component, event, helper) {
		var name = component.find("name").get("v.value");
        var evt = $A.get("e.c:newevent");
        evt.setParams({"accname":name});
        evt.fire();
	}
})