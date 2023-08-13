({
	save : function(component, event, helper) {
        var n =component.find("1").get("v.value");
          var l =component.find("2").get("v.value");
        component.set("v.fstname",n);
        component.set("v.lstname",l);
        var a = component.get("v.fstname");
          var b = component.get("v.lstname");
        var c = component.get("v.recordId");
        
       var result = component.get("c.main");
        
        result.setParams({"lastname":a,"firstname":b,"accid":c});
           
        
        result.setCallback(this,function(response){
            var state=response.getState();
            if(state==='SUCCESS'){
                console.log(response.getReturnValue());  var tos = $A.get("e.force:showToast");
        tos.setParams({"title":"save",
                       "message":"sucessfully"});
        tos.fire();
                
            }
            else{
                console.log('error');
                 console.log(component.get("v.mycnatct"));
                     console.log(component.get("v.recordID"));
            }
                        
        });
      
        
        
        
        
        
$A.enqueueAction(result);
        
	}
    
    

    
    
})