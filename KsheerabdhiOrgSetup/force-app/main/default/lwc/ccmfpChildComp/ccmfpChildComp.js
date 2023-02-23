import { api, LightningElement } from 'lwc';

export default class CcmfpChildComp extends LightningElement {
    val=10
    val
    changeHandler(e){
        this.val=e.target.value
    }
    @api
    resetSlider(){
        this.val=10
        this.vl=this.template.querySelector('.d1')
        this.vl.innerHTML='This is query selector example of div tag'
        this.vl.style.color='green';
    }
}