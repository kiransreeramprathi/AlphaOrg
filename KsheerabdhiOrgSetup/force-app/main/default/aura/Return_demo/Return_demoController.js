({
	square : function(component, event, helper) {
		var act1=component.get('c.add');
        $A.enqueueAction(act1,false);
        act1.setCallback(this,function(resp){
            var s=resp.getReturnValue();
            var sq=s*s;
            component.set('v.opmsg',sq);
        });
	},
    add : function(component, event, helper) {
		var a=569;
        var b=698;
        var sum=a+b;
        return sum;
	},
})