({
	doInit : function(component, event, helper) {
		var act=component.get('c.getEmprec');
        $A.enqueueAction(act,false);
        act.setCallback(this,function(response){
            var res=response.getReturnValue();
            component.set('v.empdata',res);
        },'SUCCESS')
	},
    changeEname : function(component, event, helper) {
		var edata1=component.get('v.empdata');
        var enm=component.get('v.ename');
        var ned1=[];
        for(var i=0;i<edata1.length;i++){
            if(enm === edata1[i].Name){
                ned1.push(edata1[i]);
            }
        }
        component.set('v.nedata',ned1);
	},
    changeMaxsal : function(component, event, helper) {
		var edata2=component.get('v.empdata');
        var minsal=component.get('v.mins');
        var maxsal=component.get('v.maxs');
        var ned2=[];
        for(var i=0;i<edata2.length;i++){
            if(edata2[i].Monthly_salary__c>=minsal && edata2[i].Monthly_salary__c <= maxsal){
                ned2.push(edata2[i]);
            }
        }
        component.set('v.nedata',ned2);
	},
    changeGender : function(component, event, helper) {
	var edata3=component.get('v.empdata');
        var gen=component.get('v.genvalue');
        console.log(gen);
        var ned3=[];
        for(var i=0;i<edata3.length;i++){
            if(edata3[i].Gender__c===gen){
                ned3.push(edata3[i]);
            }
        }
        component.set('v.nedata',ned3);
	
	}
})