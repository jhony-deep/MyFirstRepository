({
	show : function(component, event, helper) {
		var fees = component.get("v.fees");
        var discount = component.get("v.discount");
        var finalamount =component.get("v.finalamount");
        if(fees>90000){
          finalamount=fees*discount;  
        }
        else{
            finalamount=fees-2000;
        }
       
        component.set("v.finalamount",finalamount);
        console.log('final ampunt'+finalamount);
	}
})