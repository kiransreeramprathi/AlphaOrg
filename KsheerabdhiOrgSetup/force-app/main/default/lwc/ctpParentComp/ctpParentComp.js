import { LightningElement } from 'lwc';

export default class CtpParentComp extends LightningElement {
    showModal=false
    msg
    clickHandler(){
        this.showModal=true
    }
    closeHandler(e){
        this.msg=e.detail.msg
        this.showModal=false
    }
}