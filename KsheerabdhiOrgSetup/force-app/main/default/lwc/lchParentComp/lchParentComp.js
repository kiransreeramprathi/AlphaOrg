import { LightningElement } from 'lwc';

export default class LchParentComp extends LightningElement {
    renderedCallback(){
        console.log('Parent RCB');
    }
    connectedCallback(){
        console.log('Parent CCB');
    }
    constructor(){
        super()
        console.log('Parent Constructor')
    }
    status=false
    clickHandler(e){
        this.status=!this.status
    }
}