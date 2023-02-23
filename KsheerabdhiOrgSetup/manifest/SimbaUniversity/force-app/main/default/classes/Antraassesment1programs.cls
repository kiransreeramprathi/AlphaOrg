public class Antraassesment1programs{
    /*Calculate total salary of an employee (sum of basic, HRA and DA with deduction of tax). 
Note: HRA (5% of basic), DA (3% of Basic) and Tax (4% of basic).*/
    public static void question4(integer basic){
        double hra=basic*0.05;
        double da=basic*0.03;
        double tax=basic*0.04;
        double total_Deductions=hra+da+tax;
        double Monthly_Ctc=basic-total_Deductions;
        system.debug('The monthly salary of employee after all deduction is : ' +Monthly_Ctc);
    }
  
}