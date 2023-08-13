({
	show : function(component, event, helper) {
		var name = component.find("p").get("v.value");
        var evt =$A.get("e.c:application_evt");
        evt.setParams({"name":name});
        evt.fire();
	}
})