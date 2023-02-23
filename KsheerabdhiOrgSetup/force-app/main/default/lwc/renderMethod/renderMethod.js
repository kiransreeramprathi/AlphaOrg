import { LightningElement } from 'lwc';
import signinTemp from './signinTemplate.html'
import signupTemp from './signupTemplate.html'
import renderTemp from './renderMethod.html'
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
export default class RenderMethod extends LightningElement {
    selectedBtn=''
    render(){
        console.log('hello')
        return this.selectedBtn === 'Signup'?signupTemp:
        (this.selectedBtn==='Signin'?signinTemp:renderTemp)
    }
    handleClick(e){
        this.selectedBtn=e.target.label
    }
    submitHandler(e){
        console.log(`${e.target.label} successfully!!`)
        let st=new ShowToastEvent({title:'Operation success',message:`${e.target.label} successfully!!`,variant:'success'})
            this.dispatchEvent(st);

    }
}