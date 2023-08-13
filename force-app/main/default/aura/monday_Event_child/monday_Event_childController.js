({
	con : function(component, event, helper) {
      var name1= component.find("myid").get("v.value");
        var evt = component.getEvent("one");
        evt.setParams({"nwevent":name1});
        evt.fire();
	},
    opp : function(component, event, helper) {
      
        var name1= component.find("myid1").get("v.value");
        var evt = component.getEvent("one");;
       evt.setParams({"nwevent":name1});
        evt.fire();
	}

})