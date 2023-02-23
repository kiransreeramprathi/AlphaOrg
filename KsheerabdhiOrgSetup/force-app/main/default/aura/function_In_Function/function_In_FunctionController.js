({
	clickme : function(component, event, helper) {
		alert('Yes what? why did you click me');
        var act1=component.get('c.clickme1');
        $A.enqueueAction(act1,false);
	},
    clickme1 : function(component, event, helper) {
		alert('stay away from button');
        var act2=component.get('c.clickme2');
        $A.enqueueAction(act2,false);    
	},
    clickme2 : function(component, event, helper) {
		alert('arey why are you clicking the button');
	}
})