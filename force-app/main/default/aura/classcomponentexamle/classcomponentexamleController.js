({
	invoke : function(component, event, helper) {
		var action = component.get("c.main");
        action.setParams({"indus":component.get("v.recordId")});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state==='SUCCESS'){
                var result = response.getReturnValue();
                component.set("v.myopportunity",result);
               console.log(result);
            }
            
        });
        $A.enqueueAction(action);
        
	},
    show : function(component, event, helper) {
		var action = component.get("c.man");
        action.setParams({"lea":component.get("v.recordId")});
   
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state==='SUCCESS'){
                var result = response.getReturnValue();
                component.set("v.mycontact",result);
               console.log(result);
            }
            
        });
        $A.enqueueAction(action);
        
	},
    
    
})