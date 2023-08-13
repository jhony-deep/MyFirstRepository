({
	doinit : function(component, event, helper) {
        $A.createComponent("lightning:card",{"title":"MY ACCOUNT",
                                             "iconName":"standard:person_account",
                                              },function(newcomponent,state,errorMessage){
                                                  if(state==='SUCCESS'){
                                                      var body =component.get("v.body");
                                                      body.push(newcomponent);
                                                      component.set("v.body",body);
                                                  }
                                                  else if(state==='INCOMPLETE'){
                                                      console.log('error message');
                                                  }
                                              }
                           );
	}
})