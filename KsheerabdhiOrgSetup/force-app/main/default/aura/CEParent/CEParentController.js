({
	parentComponentEvent : function(cmp, event, helper) {
		var en1 = event.getParam('ename'); 
        cmp.set('v.enmp',en1);
        console.log(en1);
        var em2 = event.getParam('emlId'); 
        cmp.set('v.emlp',em2); 
        console.log(em2);
	}
})