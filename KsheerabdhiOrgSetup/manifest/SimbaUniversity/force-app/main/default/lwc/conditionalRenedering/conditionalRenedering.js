import { LightningElement } from 'lwc';

export default class ConditionalRenedering extends LightningElement {
    showMsg = false;
    handleChange(event){
        this.showMsg = event.target.checked;
    }
}