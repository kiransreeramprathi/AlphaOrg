({
    GetValue : function(component, event, helper) {
        var sldVal = component.get('v.LeadName');
        var opt = component.get('c.ListLeads');
        opt.setParams({'ldName':sldVal});
        $A.enqueueAction(opt, false);
        opt.setCallback(this,function(response){
            var res = response.getReturnValue();
            component.set('v.AccRecord',res);
        },'SUCCESS');
    },
    DisplayDynamic : function(component, event, helper) {
        var opt = component.get('c.DisplayLeadDetails');
        $A.enqueueAction(opt, false);
        opt.setCallback(this,function(response){
            var res = response.getReturnValue();
            var options=[];
            for(var i=0;i<res.length;i++){
                options[i]={'label':res[i],'value':res[i]};
            }
            console.log(options);
            component.set('v.Status',options);
        },'SUCCESS');
        
        var act = component.get('c.DisplayLeadSourceDeatils');
        $A.enqueueAction(act, false);
        act.setCallback(this,function(response){
            var res = response.getReturnValue();
            var options=[];
            for(var i=0;i<res.length;i++){
                options[i]={'label':res[i],'value':res[i]};
            }
            console.log(options);
            component.set('v.LeadSources',options);
        },'SUCCESS');
    },
    getSelectedValue : function(component, event, helper) {
        var sldVal = component.get('v.selectedValue');
        var opt = component.get('c.getSelectedRecord');
        opt.setParams({'Stus':sldVal});
        $A.enqueueAction(opt, false);
        opt.setCallback(this,function(response){
            var res = response.getReturnValue();
            component.set('v.AccRecord',res);
        },'SUCCESS');
    },
    
    getSelectedLeadValue : function(component, event, helper) {
        var sldVal = component.get('v.LeadSourceselectedValue');
        var opt = component.get('c.getSelectedLeadRecord');
        opt.setParams({'leadSrc':sldVal});
        $A.enqueueAction(opt, false);
        opt.setCallback(this,function(response){
            var res = response.getReturnValue();
            component.set('v.AccRecord',res);
        },'SUCCESS');
    }
})