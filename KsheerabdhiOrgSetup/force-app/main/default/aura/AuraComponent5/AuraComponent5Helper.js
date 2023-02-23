({
	helperMethod : function(component) {
        var name=component.get('v.nm')
		alert('helper method '+name);
        var act=component.get('c.getData');
        $A.enqueueAction(act,false);
        act.setCallback(this,function(response){
            var res=response.getReturnValue();
            alert(res);
        },'SUCCESS')
	}
})