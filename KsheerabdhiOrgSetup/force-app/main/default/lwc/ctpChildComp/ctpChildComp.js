import { LightningElement } from 'lwc';

export default class CtpChildComp extends LightningElement {
    closeMethod(){
        const myEvent=new CustomEvent('close',{detail:{msg:"Modal Closed successfully!!"}})
        this.dispatchEvent(myEvent)
    }
}