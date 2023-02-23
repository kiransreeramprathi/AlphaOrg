public class AntraLogicalTasks {
    //1.	Consider a is 5 print a?
    public static void task1(){
        integer a=5;
        system.debug(a);
    }
    //2.	consider a is 2.3 print a?
    public static void task2(){
        double a=2.3;
        system.debug(a);
    }
    //3.	consider a is 'm' print a?
    public static void task3(){
        string a='m';
        system.debug(a);
    }
    //4.	consider x is "Antra" print x?
    public static void task4(){
        string x='Antra';
        system.debug(x);
    }
    //5.	consider x is "abc123@gmail.com" print x?
    public static void task5(){
        string x='abc123@gmail.com';
        system.debug(x);
    }
    //6.	consider x is true print x?
    public static void task6(){
        boolean x=true;
        system.debug(x);
    }
    //7.	consider x is 10, y is integer store x in y print x,y?
    public static void task7(){
        integer x=10;
        integer y=x;
        system.debug('X value is'+x);
        system.debug('y value is'+y);
    }
    //8.	consider x is 10, y is double store x in y print x,y?
    public static void task8(){
        integer x=10;
        double y=x;
        system.debug('X value is'+x);
        system.debug('y value is'+y);
    }
    //9.	consider x is 10.3, y is long store x in y print x,y?
    public static void task9(){
        decimal x=10.3;
        long y=x.intvalue();
        system.debug('X value is'+x);
        system.debug('y value is'+y);
    }
    //10.	consider a is 5, b is 9 store sum of a and b in c print a,b,c?
    public static void task10(){
        integer a=5;
        integer b=9;
        integer c=a+b;
        system.debug('value of a is'+a);
        system.debug('value of b is'+b);
        system.debug('value of c is'+c);
    }
    //11.	consider a is 5, b is 9.5 store sum of a and b in c print a,b,c?
    public static void task11(){
        integer a=5;
        double b=9.5;
        double c=a+b;
        system.debug('value of a is'+a);
        system.debug('value of b is'+b);
        system.debug('value of c is'+c);
    }
    //1.	Consider first name is Antra last name is Inc display full name?
    public static void task12(){
        string Firstname='Antra';
        string Lastname='Inc';
        system.debug('the value = '+Firstname+' '+Lastname);
    }
    //2.	Consider a is 5 display square and cube?
    public static void task13(){
        integer a=5;
        integer squarevalue=a*a;
        integer CubeValue=a*a*a;
        system.debug('square value of'+a+'is '+squarevalue);
        system.debug('Cube value of'+a+'is '+CubeValue);
    }
    //3.	Consider a is 5 display sum of square and cube?
    public static void task14(){
        integer a=5;
        integer squarevalue=a*a;
        integer CubeValue=a*a*a;
        integer pk_sumValue=squarevalue+CubeValue;
        system.debug('square value of'+a+'is '+squarevalue);
        system.debug('Cube value of'+a+'is '+CubeValue);
        system.debug('sum of square and cube is'+pk_sumValue);
    }
    //4.	Consider the radius is 5 display area and  perimeter of the circle?
    public static void task15(){
        integer radius=5;
        double pk_perimeter=2*3.14*radius;
        double pk_area=3.14*(radius*radius);
        system.debug('perimeter ='+pk_perimeter);
        system.debug('perimeter ='+pk_area);
    }
    //5.	Consider length is 5 and breadth is 3 display area and perimeter of rectangle?
    public static void task16(){
        integer ks_length=5;
        integer ks_breadth=3;
        integer ks_RecArea=ks_length*ks_breadth;
        integer ks_RecPerimeter=2*(ks_length+ks_breadth);
        system.debug('perimeter of rectangle = '+ks_RecPerimeter);
        system.debug('Area of rectangle = '+ks_RecArea);
    }
    //6.	Consider the height is 5 display area and perimeter of the square?
    public static void task17(){
        integer ks_cubeHeight=5,ks_cubePerimeter=12*ks_cubeHeight,ks_cubeArea=6*(ks_cubeHeight*ks_cubeHeight);
        system.debug('perimeter of cube = '+ks_cubePerimeter);
        system.debug('Area of cube = '+ks_cubeArea);
    }
    //7.	Consider principal value is 1000/-  rate of interest is 15% time period is 
    // 5years Display total amount based on simple interest ?
    public static void task18(){
        integer ks_principalAmount=1000,ks_intresetRate=15,ks_timePeriod=5;
        double ks_simpleIntrest=(ks_principalAmount*ks_intresetRate*ks_timePeriod)/100;
        system.debug('simple intrest for 5 years '+ks_simpleIntrest);
    }
    //8.	Program to calculate total salary of employees.
    //Consider basic salary as 10,000,   30% basic salary is hra, 10% basic salary is da. 
    //hint: Total Salary=basic salary+hra+da
    public static void task19(){
        integer ks_basicSalary=10000;
        double ks_hra=ks_basicSalary*0.3;
        double ks_da=ks_basicSalary*0.1;
        double ks_totalSalary=ks_basicSalary+ks_hra+ks_da;
        system.debug('Total salary is '+ks_totalSalary);
    }
    //9.	Consider 3 subject marks as 60,70,80 Display total,percentage
    public static void task20(){
        integer mark1=60,mark2=70,mark3=80;
        double g=(mark1+mark2+mark3);
        double h = ((g*100)/300);
        system.debug(' total marks= '+g);
        system.debug(' percentage of total marks= '+h);
        
    }
    /*10.	Program to calculate gross salary and net salary of employees.
Consider basic salary as 10,000
30% basic salary is hra.
10% basic salary is da.
sum of basic salary, da, hra is gross salary.
deductions:
Provident fund of employee is 2000.
The professional tax of an employee is 200.
The income tax of an employee is 10 percent of the basic salary.
calculate net salary
formula
net salary=gross salary-deductions.
display gross salary and net salary.
*/
    public static void task21(){
        integer ks_basicSalary=10000;
        double ks_hra=ks_basicSalary*0.3,ks_da=ks_basicSalary*0.1,
            ks_grossSalary=ks_basicSalary+ks_hra+ks_da,ks_Providentfund=2000,ks_proTax=200,ks_incometax=ks_basicSalary*0.1,
            ks_totalDeductions=ks_Providentfund+ks_proTax+ks_incometax;
        double netSalary=ks_grossSalary-ks_totalDeductions;
        system.debug('Total gross salary is '+ks_grossSalary);
        system.debug('Total net salary is '+netSalary);
    }
    /*11.	The product cost is 1000 RS.
gst is 10% of product cost.
calculate net price of a product.
*/
    public static void task22(){
        integer ks_ProductCost=1000;
        double ks_gst=ks_ProductCost*0.1,ks_netPrice=ks_ProductCost+ks_gst;
        system.debug('net price of a product '+ks_netPrice);
    }
    /*12.	The net price of a product is 230.
gstamout is 30
calculate the original cost of the product .
*/
    public static void task23(){
        integer ks_NetProductCost=230;
        double ks_gst=30,ks_OriginalPrice=ks_NetProductCost-ks_gst;
        system.debug('original cost of the product '+ks_OriginalPrice);
    }
    /*13.	The net price of a product is 440.
gst is 10% 
calculate the original cost of the product. 
formula:
net price=product cost+percentage of gst on product cost.
Original cost=(net price*100)/(100+gst)
*/
    public static void task24(){
        integer ks_netPrice=440;
        double ks_productCost=(ks_netPrice*100)/(100+10);
        system.debug(ks_productCost);
        
    }
    /*14.	consider 500 days Display years,months,week,days?*/
    public static void task25(){
        double ks_days=500;
        double ks_years=ks_days/365,ks_months=ks_days/31,ks_week=ks_days/7;
        system.debug('500 days in years '+ks_years);
        system.debug('500 days in months '+ks_months);
        system.debug('500 days in weeks '+ks_week);
    }
    /*15.	Consider 1 00 000 seconds
Display minutes and seconds
*/
    public static void task26(){
        double ks_seconds=100000;
        double ks_minutes=ks_seconds/60,ks_seconds2=ks_seconds;
        system.debug('given seconds in minutes'+ks_minutes);
        system.debug('given seconds in seconds'+ks_seconds2);
    }
    /*16.	Consider 1 00 000 seconds
Display hours,minutes and seconds*/
    public static void task27(){
        double ks_seconds=100000;
        double ks_minutes=ks_seconds/60,ks_seconds2=ks_seconds,ks_hours=ks_seconds/3600;
        system.debug('given seconds in minutes'+ks_minutes);
        system.debug('given seconds in seconds'+ks_seconds2);
        system.debug('given seconds in hours'+ks_hours);
    }
    /*17.	Consider 1 00 000 seconds
Display days,hours,minutes and seconds
Hint:-
1 day=24 hours       86400 seconds
1 hour=60 minutes  3600 seconds
1 minute=60 seconds
Expected output: 1 day 3 hours 46 minutes 40 seconds.  */
    public static void task28(){
        integer ks_seconds=100000;
        integer ks_minutes=ks_seconds/60,ks_day=ks_minutes/60/24;
        integer ks_hours = (ks_minutes - ks_day * 60 * 24) / 60 ;
        integer ks_mins = ks_minutes - ks_day * 60 * 24 - ks_hours * 60 ;
        String TotalTimeInDays = ks_day+'Days '+ks_hours+'Hours '+ks_mins+'Minutes';
        system.debug('day'+ks_day);
        system.debug('hours'+ks_hours);
        system.debug('Minutes'+ks_mins);
        system.debug('Total Time In Days='+TotalTimeInDays);
        
    }
    /*18.	Consider 8796 centimeters. 
Display meter,feet,inch,centimeter?
Formula:
1meter=100cm
1feet=12 inches =30cm
1inch=2.5cm
Expected o/p:- 87 meters 3 feet 1 inch 2cm*/
    public static void task29(){
        double ks_centimeter=8796;
        double meter=ks_centimeter/100;
        //system.debug(meter);
        double MeterResedual=math.abs(meter-meter.intValue());
        //system.debug(MeterResedual);
        double feet=MeterResedual*3.28;
        //system.debug(feet);
        double footResedual=math.abs(feet-feet.intValue());
        //system.debug(footResedual);
        double inch=footResedual*12;
        //system.debug(inch);
        double inchResedual=math.abs(inch-inch.intValue());
        double centimeter=inchResedual*2.54;
        system.debug(meter+' meters '+feet+' feet '+inch+' Inches '+centimeter+' Centimeter ');
    }
    //Conditional Statements
    //1.	Write a program input two numbers and find out the biggest number.
    public static void taskc1(){
        integer a=5,b=9;
        if(a>b){
            system.debug(a+' is the biggest number');
        }else{
            system.debug(b+' is the biggest number');
        }
    }
    //2.Write a program input three numbers and find out the biggest number.
    public static void taskc2(){
        integer a=5,b=9,c=11;
        if(a>b&&a>c){
            system.debug(a+' is the biggest number');
        }else if(b>c&&b>a){
            system.debug(b+' is the biggest number');
        }else{
            system.debug(c+' is the biggest number');
        }
    }
    //3.	Write a program input any number and check it is positive or negative or 0
    public static void taskc3(){
        integer a=-5;
        if(a>0){
            system.debug(a+' is positive');
        }else if(a<0){
            system.debug(a+' is negitive');
        }else{
            system.debug(a+' is nuetral');
        }
    }
    //4.	Write a program input any positive number and check it is even or odd
    public static void taskc4 (integer x)
    {
        integer y;
        integer z;
        y = x/2;
        
        z = y * 2;
        
        If(z == x) 
        {
            System.Debug('Even');
        }
        else System.Debug('Odd');
    }
    //5.	Program to check whether a number is divisible by 5 and 11 or not
    public static void taskc5(){
        integer a=55;
        If( math.mod(a, 5)  == 0 && math.mod(a,11) ==0)
        {
            System.debug(a+ 'is divisible by 5 and 11');
        }
        Else
        {
            System.debug(a+ 'is not divisible by 5 and 11');
        }
    }
    //6.	Write a program input acno , name, current balance, transaction amount, transaction code(d/w) calculate net balance.
    public static void taskc6(integer accno,integer currentbalance,integer tamt,string type){
        integer netbal;
        if(type=='deposit'){
            netbal=currentbalance+tamt;
            system.debug('Your deposited amount ='+tamt+' and your total available amount= '+netbal+'in your account '+accno);
        }else if(type=='withdraw'){
            netbal=currentbalance-tamt;
            system.debug('Your withdrawed amount ='+tamt+' and your total available amount= '+netbal+'in your account '+accno);
        }else{
            system.debug('sorry option not available');
        }        
    }
    /*7.	Write a program input cno, cname,srno,erno,slab type(i/c/r) calculate units consumed
Conditions: if slab type is industry then unit rate is 5/- 
If slab type is commercial then unit rate is 4/- 
If slab type is residence then unit rate is 3/-
Calculate total bill.*/
    public static void taskc7(string type,integer consumernumber,integer unitscons,integer servno){
        double total_amount;
        if(type=='industry'){
            total_amount=unitscons*5;
            system.debug('the bill generated on '+servno+'for'+unitscons+' units consumed is '+ total_amount);
        }else if(type=='commercial'){
            total_amount=unitscons*4;
            system.debug('the bill generated on '+servno+'for'+unitscons+' units consumed is '+ total_amount);
        }else{
            total_amount=unitscons*3;
            system.debug('the bill generated on '+servno+'for'+unitscons+' units consumed is '+ total_amount);
        }
    }
    /*8.	Write a program input eno,ename,sal,designation(m/a/c) .
If designation is manager then bonus is 20% on his salary
If designation is analyst then bonus is 10% on his salary
If designation is clerk then bonus is 5% on his salary, Calculate tot salary
*/
    public static void taskc8(string a){
        double BasicSalary=30000;
        double FinalSalary;
        if(a=='manager'){
            FinalSalary=(BasicSalary*0.2)+BasicSalary;
            system.debug('Final salary of manager= '+FinalSalary);
        }else if(a=='analyst'){
            FinalSalary=(BasicSalary*0.1)+BasicSalary;
            system.debug('Final salary of analyst= '+FinalSalary);
        }else{
            FinalSalary=(BasicSalary*0.05)+BasicSalary;
            system.debug('Final salary of clerk= '+FinalSalary);
        }
        
    }
    /*9.	Write a program input sno,sname,tm. 
If tm>360 then print ‘First class’,  If  Tm>=300 and tm<360 then print ‘second class’, If tm<300 then print ‘third class’ 
*/
    public static void taskc9(integer tm){
        if(tm>360){
            system.debug('First class');
        }else if(tm>=300){
            system.debug('second class');
        }else
            system.debug('third class');
    }
    /*10.	Wap to check whether the given year is Leapyear or not?*/
    public static void taskc10(Integer year) {
        if ( math.mod(year,400) == 0 || math.mod(year,4) == 0){
            system.debug('entered year is leap year');
        }else system.debug('entered year is not leap year');
    }
    /*11.	Program to check triangle validity when angles are given*/
    public static void taskc11(integer a,integer b,integer c){
        integer sum=a+b+c;
        if(sum==180){
            system.debug('it is valid triangle');
        }else system.debug('it is not valid triangle');
    }
    /*12.	Program to check equilateral, scalene or isosceles triangle*/
    public static void taskc12(integer a,integer b,integer c){
        if(a==b&&a==c){
            system.debug('it is equilateral triangle');
        }else if(a==b || b==c || c==a){
            system.debug('it is  isosceles triangle');
        }else system.debug('it is  scalene triangle');
    }
    /*13.	program to input electricity unit charges and calculate total electricity bill according to the given condition:
For first 50 units Rs. 0.50/unit
For next 100 units Rs. 0.75/unit
For next 100 units Rs. 1.20/unit
For unit above 250 Rs. 1.50/unit
An additional surcharge of 20% is added to the bill
*/
    public static void taskc13(integer a){
        double BillAmount;
        if(a<=50){
            BillAmount=(a*0.50);
            system.debug('Total bill ='+BillAmount);
        }else if(a<=150){
            BillAmount=(a*0.75);
            system.debug('Total bill ='+BillAmount);
        }else if(a<=250){
            BillAmount=(a*1.20);
            system.debug('Total bill ='+BillAmount);
        }else{
            BillAmount=(a*1.20)+(a*0.2);
            system.debug('Total bill ='+BillAmount);
        }
    }
    /*14.	Input product cost is from console gst is 10% of product cost.
calculate net price of a product.If the net price is greater than 500 give 20% Discount and print net price
*/
    public static void taskc14(double a){
        double netPrice=(a*0.1)+a;
        if(netPrice>500){
            netPrice=netPrice-(netPrice*0.20);
            system.debug('Net Price= '+netPrice);
        }else
            system.debug('Net Price= '+netPrice);
    }
    /*15.	Input  seconds from console (Ex: 1 00 000)
hours
Hint:   1 day=24 hours       86400 seconds
1 hour=60 minutes  3600 seconds
1 minute=60 seconds If the hour is less than 18, create a "Good day" greeting, otherwise "Good evening"
*/
    public static void taskc15(double a){
        decimal hours=a/3600;
        decimal rounded=hours.setScale(2);
        system.debug(rounded+' hours');
        if(rounded<18){
            system.debug('Good day');
        }else system.debug('Good evening');
    }
    /*16.	Wap to read a day of week in digit and print appropriate messages.
1: Holiday
2, 3, 4, 5: Working day 
6,7: Half day*/
    public static void taskc16(integer a){
        if(a==1){
            system.debug('It is Holiday');
        }else if(a>=2 && a<=5){
            system.debug('It is working day');
        }else if(a==6 || a==7){
            system.debug('It is Half day');
        }else system.debug('week days should be between 1 to 7');
    }
   
    //switch program's
    /*1.	Write a program input acno, name, current balance, transaction amount, transaction code(d/w) calculate net balance.*/
    public static void tasks1(integer accno,integer currentbalance,integer tamt,string type){
        integer netbal;
        switch on type{
            when 'deposit'{
                netbal=currentbalance+tamt;
                system.debug('Your deposited amount ='+tamt+' and your total available amount= '+netbal+'in your account '+accno);
            } 
            when 'withdraw'{
                netbal=currentbalance-tamt;
                system.debug('Your withdrawed amount ='+tamt+' and your total available amount= '+netbal+'in your account '+accno);
            } 
            when else {
                system.debug('sorry option not available');
                
            } 
        }  
    }
    /*2.	Write a program to input any number from 1 to 10 and print in words.*/
    public static void tasks2(integer a){
        switch on a{
            when 1{ 
                system.debug('one');
            } 
            when 2{ 
                system.debug('two');
            }when 3{ 
                system.debug('three');
            } when 4{ 
                system.debug('four');
            }when 5{ 
                system.debug('five');
            }when 6{ 
                system.debug('six');
            }when 7{ 
                system.debug('seven');
            }when 8{ 
                system.debug('eight');
            }when 9{ 
                system.debug('nine');
            }when 10{ 
                system.debug('ten');
            }when else{ 
                system.debug('value should between 1 to 10');
            }         
        }
    }
    /*3.	Wap to check whether the given character is vowel or consonant?*/
    public static void tasks3(string a){
        switch on a{
            when 'a','e','i','o','u'{ 
                system.debug('vowel');
            } 
            when else{ 
                system.debug('constatnt');
            }
        }
    }
}