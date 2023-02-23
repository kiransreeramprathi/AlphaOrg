import { LightningElement } from 'lwc';

export default class DynamicBinding extends LightningElement {
    disp = '';
    handleChange(event){
        this.disp = event.target.value;
    }
}