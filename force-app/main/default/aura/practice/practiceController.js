({
	show : function(component, event, helper) {
        var result=component.get("c.hey");
        result.setCallback(this,function(response){
            var state= response.getState();
            if(state==='SUCCESS'){
                var action = response.getReturnValue();
                component.set("v.labels",action);
            }else{
                console.log(error);
            }
        });
        
        $A.enqueueAction(result);
	}
})