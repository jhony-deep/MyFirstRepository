({
	invoke : function(component, event, helper) {
		var name = event.getParam("accname");
        var result = component.get("c.getopp");
        result.setParams({"accname":name});
        alert(name);
                          result.setCallback(this,function(response){
                          var state=response.getState();
                              if (state==='SUCCESS'){
                                  var action =response.getReturnValue();
                                  component.set("v.opp",action);
                              }
                         }) ;  
        
        $A.enqueueAction(result);
	}
})