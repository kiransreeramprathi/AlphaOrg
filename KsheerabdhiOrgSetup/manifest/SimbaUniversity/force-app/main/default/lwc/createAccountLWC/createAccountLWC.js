import { LightningElement } from 'lwc';
import ACCOUT_OBJECT from '@salesforce/schema/Account';
import NAME_FEILD from '@salesforce/schema/Account.Name';
import PHONE_FEILD from '@salesforce/schema/Account.Phone';
import REVENUE_FEILD from '@salesforce/schema/Account.AnnualRevenue';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class CreateAccountLWC extends LightningElement {
    objectApiName = ACCOUT_OBJECT;
    fields = [NAME_FEILD,PHONE_FEILD,REVENUE_FEILD];
    handleSuccess(event){
        const toastEvent = new ShowToastEvent({
            title:"Account has been created successfully",
            message: "Account created",
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }
}