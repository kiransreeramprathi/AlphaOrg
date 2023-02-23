import { LightningElement, wire } from 'lwc';
import method1 from '@salesforce/apex/getAccRecords.method1';


export default class DispAccFromApexCls extends LightningElement {
    acn
    acnameHandler(e){
        this.acn=e.target.value;
    }
    
    @wire(method1,{accName:'$acn'}) act;
}