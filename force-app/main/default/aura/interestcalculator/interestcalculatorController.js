({
	invoke : function(component, event, helper) {
		var principle=component.get("v.principle");
        var rate=component.get("v.rate");
        var time=component.get("v.time");
        var interest=component.get("v.interest");
        var totalamount=component.get("v.totalamount");
        if(time==1){
            interest=(principle*rate*1)/100;
            totalamount=interest+principle;
        }
        else{
              interest=(principle*rate*time)/100;
            totalamount=interest+principle;
        }
        component.set("v.totalamount",totalamount);
        console.log('totalamount'+totalamount);
         component.set("v.interest",interest);
        
        
        
        
	}
})