import { LightningElement } from 'lwc';

export default class LchChildComp extends LightningElement {
    renderedCallback(){
        console.log('Child RCB');
    }
    connectedCallback(){
        console.log('Child CCB');
    }
    constructor(){
        super()
        console.log('Child Constructor')
    }
}