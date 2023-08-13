({
	call : function(component, event, helper) {
        var firstname = component.find("fname").get("v.value");
          var lastname = component.find("lname").get("v.value");
        var abc = component.get("c.kunal");
        abc.setParams({"firstname":firstname,"lastname":lastname});
        abc.setCallback(this,function(response){
                  var state = response.getState();
        if(state==='SUCCESS'){
            var result = response.getReturnValue();
            component.set("v.result",result);
        }
        else{
            console.log('sorry youe state is failed')
        }     
                       });
    $A.enqueueAction(abc);
	}
})