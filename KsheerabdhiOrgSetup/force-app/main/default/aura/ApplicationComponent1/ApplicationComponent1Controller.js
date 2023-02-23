({
	addition : function(component, event, helper) {
		var fno=component.get('v.fn');
        var sno=component.get('v.sn');
        var sum1=parseInt(fno)+parseInt(sno);
        console.log()
        var act=$A.get('e.c:ApplicationComponentEvent');
        act.setParams({'sum':sum1});
        act.fire();
	}
})