import { LightningElement } from 'lwc';

export default class ParentDynamic extends LightningElement {
    percentage=0
    changeHandler(e){
        this.percentage=e.target.value
    }
}