({
	crtButtonDynamically : function(component, event, helper) {
		var db=component.find('newtag');
        $A.createComponent(
            'lightning:button',
            {
                'label':'New Button',
                'onclick':component.getReference('c.showPressedButtonLabel')
            },
            function(dynamicButton,status,errorMessage)
            {
                if(status === 'SUCCESS'){
                    var bdy=db.get('v.body');
                    bdy.push(dynamicButton);
                    db.set('v.body',bdy);
                }
            }
        );
	},
    removeButtonDynamically:function(component,event,helper){
        component.find('newtag').set('v.body',[]);
    },
    showPressedButtonLabel:function(component,event,helper){
        alert('you clicked: '+event.getSource().get('v.label'));
    }
})