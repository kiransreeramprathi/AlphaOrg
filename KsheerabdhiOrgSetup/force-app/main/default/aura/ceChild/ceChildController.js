({
	displayOnParent : function(component, event, helper) {
		var en = component.get('v.enmc');
        var em = component.get('v.emlc');
        var cpe = component.getEvent('sampleCmpEvent');
        cpe.setParams({'ename':en,'emlId':em});
        /*cpe.setParam('ename',en);
        cpe.setParam('emailId',em);*/
        cpe.fire();
	}
})