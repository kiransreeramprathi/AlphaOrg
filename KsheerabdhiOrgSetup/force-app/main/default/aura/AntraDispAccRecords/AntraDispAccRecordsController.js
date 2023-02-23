({
    fetchrecords : function(component, event, helper) {
        component.set('v.columns',[
            {label:'Account Name',fieldName:'Name', 		type:'text'},
            {label:'Account type',fieldName:'Type', 		type:'text'},
            {label:'Billing City',fieldName:'BillingCity', 	type:'text'},
            {label:'Phone',		  fieldName:'Phone', 		type:'Phone'},
            {label:'Website',	  fieldName:'Website', 		type:'url'},
            {label:'Industry',	  fieldName:'Industry', 	type:'Picklist'}]);
        var ac=component.get('c.getAccRecords');
        $A.enqueueAction(ac,false);
        ac.setCallback(this,function(response){
        var accData=response.getReturnValue();
            if(accData !=' '){
                component.set('v.acd',accData);
                component.set('v.status',true);
            }
            else{
                component.set('v.errMsg','Records Not available');
                component.set('v.status',false);
            }
    })
}
 })