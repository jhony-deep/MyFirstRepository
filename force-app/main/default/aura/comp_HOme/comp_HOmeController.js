({
	show : function(component, event, helper) {
		var parent = component.find("parent").get("v.value");
        var child = component.find("child").get("v.value");
        var comp1='';
        if(parent=='Account'){
            comp1='c:comp_account';
        }
        else if(parent=='Lead'){
            comp1='c:comp_lead';
        }else{
            alert('none');
        }
            
        var comp2='';
        if(child=='Contact'){
            comp2='c:comp_contact';
        }
        else{
            comp2='c:comp_opportunity';
        }
        $A.createComponent(comp1,{},function(cmp,status,errormessage){
            if(status==='SUCCESS'){
                var body = component.get("v.body");
                body.push(cmp);
                component.set("v.body",body);
            }
        });
        $A.createComponent(comp2,{},function(cmp,status,errormessage){
            if(status==='SUCCESS'){
                var body = component.get("v.body");
                body.push(cmp);
                component.set("v.body",body);
            }
        });
	}
})