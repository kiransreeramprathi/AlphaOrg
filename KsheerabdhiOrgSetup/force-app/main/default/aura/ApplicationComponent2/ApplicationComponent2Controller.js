({
	dispresult : function(component, event, helper) {
	var res= event.getParam('sum');
        component.set('v.result',res);
	}
})