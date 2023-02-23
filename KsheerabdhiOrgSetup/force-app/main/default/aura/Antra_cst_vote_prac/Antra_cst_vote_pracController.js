({
	castvote : function(cmp, eve, help) {
        var name=cmp.get('v.Cadidate_Name');
        var age=cmp.get('v.Age');
        var gender=cmp.get('v.Cadidate_Gender');
        if(age<18 ){
            cmp.set('v.output_message ',' you cant cast the vote');
        }else{
             cmp.set('v.output_message ',' you can cast the vote');
        }if(gender=='male'){
            cmp.set('v.status',true);
        }else if(gender=='female'){
            cmp.set('v.status',false);
        }
	}
})