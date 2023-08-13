({
	invoke : function(component, event, helper) {
        var name = component.find("1").get("v.value");
        component.set("v.name",name);
      
        var n = component.get("v.name")
        
		var action = component.get("c.main");
        action.setParam({"name":n});
        action.setCallback(this,function(response){
                var state=response.getState();
        if(state==='SUCCESS') {
            var result= response.getReturnValue();
            component.set("v.mylist",result);
            alert(response.getReturnValue());
        }  
        else{
            console.log('failed');
        }
                           
                           
                           });
    
    
    $A.enqueueAction(action);
    }
})