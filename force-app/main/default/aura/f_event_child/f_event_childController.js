({
	show : function(component, event, helper) {
		var evt = component.getEvent("registerevent");
        evt.setParams({"eventattribute":"My_name_is_Kunal_Anand"});
        evt.fire();
	}
})