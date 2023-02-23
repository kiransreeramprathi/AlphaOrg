import { LightningElement } from 'lwc';

export default class CcmfpParentComp extends LightningElement {
    handleClick(){
        this.template.querySelector('c-ccmfp-child-comp').resetSlider()
    }
}