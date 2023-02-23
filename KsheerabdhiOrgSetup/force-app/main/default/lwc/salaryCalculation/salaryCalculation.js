import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'

export default class SalaryCalculation extends LightningElement {
    basicSalary=0.0
    bsalHandler(event){
        this.basicSalary=parseFloat(event.target.value);
    }
    cbOptions=[{label:'HRA',value:'hra'},{label:'DA',value:'da'},{label:'TA',value:'ta'}];
    grossSal=0.0
    netSal=0.0
    iTax=0.0
    hraValue=0.0
    daValue=0.0
    taValue=0.0
    checkboxHandler(event){
        let cbValue=event.detail.value;
        for(let i=0;i<cbValue.length;i++){
            if(cbValue[i]=='hra'){
                this.hraValue=this.basicSalary*0.3;
            }
            if(cbValue[i]=='da'){
                this.daValue=this.basicSalary*0.25;
            }
            if(cbValue[i]=='ta'){
                this.taValue=this.basicSalary*0.15;
            }
        }
    }
    rbOptions=[{label:'Gross salary',value:'GS'},{label:'Net salary',value:'NS'}];
    rbValue
    radioButtonHandler(event){
        this.rbValue=event.target.value;
    }
    gsStatus=false
    nsStatus=false
    calSal(event){
        if(this.rbValue=='GS'){
            this.grossSal=this.basicSalary+this.hraValue+this.daValue+this.taValue;
            this.gsStatus=true
            this.nsStatus=false
            let st=new ShowToastEvent({title:'Operation success',message:'Gross salary calculated',variant:'success'})
            this.dispatchEvent(st);
        }
        else{
            this.grossSal=this.basicSalary+this.hraValue+this.daValue+this.taValue;
            if(this.grossSal<=100000){
                this.iTax=this.grossSal*0.05;
            }
            else if(this.grossSal>100001&&this.grossSal<=200000){
                this.iTax=this.grossSal*0.1;
            }
            else if(this.grossSal>200000){
                this.iTax=this.grossSal*0.15;
            }
            this.netSal=this.grossSal-this.iTax;
            this.nsStatus=true
            this.gsStatus=false
            let st=new ShowToastEvent({title:'Operation success',message:'Net salary calculated',variant:'success'})
            this.dispatchEvent(st);
        }
    }
}