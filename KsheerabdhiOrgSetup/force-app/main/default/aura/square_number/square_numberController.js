({
    square : function(component, event, helper) {
        var bt=event.getSource().getLocalId();
        if(bt=='sq1'){
            var act1=component.get('c.add');
            $A.enqueueAction(act1,false);
            act1.setCallback(this,function(resp){
                var s=resp.getReturnValue();
                var sq=s*s;
                component.set('v.output_msg',sq);
            });
        }else if(bt=='sq2'){
            var act2=component.get('c.sub');
            $A.enqueueAction(act2,false);
            act2.setCallback(this,function(resp){
                var s=resp.getReturnValue();
                var sq=s*s;
                component.set('v.output_msg',sq);
            });  
        }
    },
    add : function(component, event, helper) {
        var a=component.get('v.ip1');
        var b=component.get('v.ip2');
       var sum=a+b;
        return sum;
    },
    sub : function(component, event, helper) {
        var a=component.get('v.ip1');
        var b=component.get('v.ip2');
       var diff=a-b;
        return diff;
    },
})