({
	invoke : function(component, event, helper) {
		var name1 = event.getParam("eventattribute");
        component.set("v.parent",name1);
        alert(name1);
	}
})