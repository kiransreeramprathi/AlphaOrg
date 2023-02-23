({
	doInit : function(component, event, helper) {
		var acn=component.get('c.getAccRecords');
        $A.enqueueAction(acn,false);
        acn.setCallback(this,function(response){
            var res=response.getReturnValue();
            var options=[];
            for(var i=0;i<res.length;i++){
                options[i]={'label':res[i],'value':res[i]}
            }
            component.set('v.accNum',options);
        },'SUCCESS');
	},
    changeAccNum : function(component, event, helper) {
		var vAcc=component.get('v.aNum');
        var act=component.get('c.getARecords');
        $A.enqueueAction(act,false);
        act.setParams({'accnumner':vAcc});
        act.setCallback(this,function(response){
            var res=response.getReturnValue();
           component.set('v.accRec',res); 
        },'SUCCESS');
	},
    changevalue : function(component, event, helper) {
		var v=component.get('v.val');
        alert("The option is "+v);
	}
})