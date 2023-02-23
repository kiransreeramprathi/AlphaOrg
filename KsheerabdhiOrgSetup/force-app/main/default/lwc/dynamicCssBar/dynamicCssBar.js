import { LightningElement } from 'lwc';

export default class DynamicCssBar extends LightningElement {
    percent=1
    cangeHandler(e){
        this.percent=e.target.value
    }
    get percentage(){
        return `width:${this.percent}%`
    }
}