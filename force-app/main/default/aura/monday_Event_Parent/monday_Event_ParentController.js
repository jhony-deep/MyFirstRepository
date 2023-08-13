({
	invoke : function(component, event, helper) {
		var name =event.getParam("nwevent");
        alert(name);
        component.set("v.newattribute",name);
        
	}
})