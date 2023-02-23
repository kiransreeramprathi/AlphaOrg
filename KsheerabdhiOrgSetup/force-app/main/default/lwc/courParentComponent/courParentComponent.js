import { LightningElement } from 'lwc';

export default class CourParentComponent extends LightningElement {
    carouselData=[
        {
            src:"https://cdn.thisiswhyimbroke.com/images/functional-iron-man-suit1.gif",
            header:"Iron man",
            description:"marvel comics"
        },
        {
            src:"https://c.tenor.com/orMqty_YPGoAAAAC/ant-man-shrink.gif",
            header:"Ant man",
            description:"marvel comics"
        },
        {
            src:"https://i.pinimg.com/originals/52/70/c5/5270c59c7eac71f60351cc36e4890a22.gif",
            header:"Thor",
            description:"marvel comics"
        }
    ]
}