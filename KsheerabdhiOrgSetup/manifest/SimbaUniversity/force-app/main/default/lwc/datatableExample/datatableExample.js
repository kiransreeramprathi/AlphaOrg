import { LightningElement, track, wire } from 'lwc';
import getAccList from '@salesforce/apex/AccountHelper.getAccountList';
export default class DatatableExample extends LightningElement {
    @track columns = [{
        label: 'Account Name',
        fieldName : 'Name',
        type: 'text',
        sortabble: true
    },
    {
        label: 'Type',
        fieldName : 'Type',
        type: 'text'
    },
    {
        label: 'Rating',
        fieldName : 'Rating',
        type: 'text'
    },
    {
        label: 'Mobile',
        fieldName : 'Phone',
        type: 'Phone'
    },
    {
        label: 'Website',
        fieldName : 'Website',
        type: 'url'
    }
];
@track error;
@track accList;
@wire(getAccList) wiredAccounts({error,data}){
    if(data){
        this.accList = data;
    }else if(error){
        this.error = error;
    }
}
}