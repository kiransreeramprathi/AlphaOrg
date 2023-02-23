public class payslipproject {
    public static boolean runonce=true;
    /*"Bank Name should only contain alphabets and must be only in capital letters
If user enters in small letters, it should be converted to capital letters"*/
    public static void req3(list<Employee_Details__c> Empd1){
        //st<Employee_Details__c> Empd1;
        for(Employee_Details__c Empd2:Empd1){
            Empd2.Bank_name__c=Empd2.Bank_name__c.touppercase(); // to uppercase
        }
    }
    /*"If Account number is entered, then IFSC Code should be made as mandatory
IFSC code should be in combination of alphanumeric and should not accept special characters and only be 11 digits"*/
    public static void req4(list<Employee_Details__c> Empd1){
        for(Employee_Details__c Empd2:Empd1){
            if(Empd2.Bank_name__c!=null && Empd2.IFSC_Code__c==null){
                Empd2.IFSC_Code__c.adderror('IFSC code shouldnt be Blank');
            }
        }
    }
    /*"PAN Number should be in combination of alphanumber and must be only 10 digits
Ex: ABCDE1234F (it should accept only this format)"*/
    public static void req5(list<Employee_Details__c> Empd1){
        //st<Employee_Details__c> Empd1;
        for(Employee_Details__c Empd2:Empd1){
            Empd2.PAN_Number__c=Empd2.PAN_Number__c.touppercase(); // to uppercase
        }
    }
    /*"AADHAAR Number should be of 12 digits and should not accept special characters, alphabets, same numbers
Ex: It should not accept numbers like 0000 0000 0000,1111 1111 1111,…...."*/
    public static void req6(list<Employee_Details__c> Empd1){
        for(Employee_Details__c Empd2:Empd1){
            if(Empd2.Aadhar_Number__c=='000000000000' ||Empd2.Aadhar_Number__c=='111111111111' || 
               Empd2.Aadhar_Number__c=='222222222222' || Empd2.Aadhar_Number__c=='333333333333' || 
               Empd2.Aadhar_Number__c=='444444444444' || Empd2.Aadhar_Number__c=='555555555555' ||
               Empd2.Aadhar_Number__c=='666666666666' || Empd2.Aadhar_Number__c=='777777777777' ||
               Empd2.Aadhar_Number__c=='888888888888' || Empd2.Aadhar_Number__c=='999999999999'){
                   Empd2.Aadhar_Number__c.adderror('Enter valid aadhar number');
               }
        }
    }
    /*"Phone Number should only be 10 digits(only numbers) and must begin with either 6 or 7 or 8 or 9
Ex: It should not accept numbers like 0000000000,1111111111,…...."*/
    public static void req8(list<Employee_Details__c> Empd1){
        for(Employee_Details__c Empd2:Empd1){
            /*if(Empd2.Phone_number__c=='0000000000' ||Empd2.Phone_number__c=='1111111111' || 
               Empd2.Phone_number__c=='2222222222' || Empd2.Phone_number__c=='3333333333' || 
               Empd2.Phone_number__c=='4444444444' || Empd2.Phone_number__c=='5555555555' ||
               Empd2.Phone_number__c=='6666666666' || Empd2.Phone_number__c=='7777777777' ||
               Empd2.Phone_number__c=='8888888888' || Empd2.Phone_number__c=='9999999999')*/
            if(Empd2.Phone_number__c.contains('999999'))
            {
                   Empd2.Phone_number__c.adderror('Enter valid phone number');
               }
        }
    }
    /*trigger for employee active status*/
    public static void req9(list<Employee_Details__c> Empd1){
        for(Employee_Details__c Empd2:Empd1){
            if(Empd2.Last_working_date__c!=null){
                Empd2.Employee_Active_status__c=false;
            }else(Empd2.Employee_Active_status__c=true);
        }
    }
    //Program for TDS
    public static void req10(list<Salary_Record__c>sal1){
        for(Salary_Record__c sal2:sal1){
            if(sal2.BASIC_SALARY__c>20000 ){
                sal2.Professional_Tax__c=200;
            }else(sal2.Professional_Tax__c=150);
        }
    }
    /*DOL should not be before DOJ, add a field for Date of resignation, Date of Leaving*/
    public static void req112(list<Employee_Details__c> Empd1){
        for(Employee_Details__c Empd2:Empd1){
            if(Empd2.Last_working_date__c<Empd2.date_of_joining__c){
                Empd2.Last_working_date__c.adderror('Last Day of working shouldnt be less than Date of Joining');
            }
        }
    }
    /*11.DOB- Age of employee should be minimum 21 years*/
    public static void req11(list<Employee_Details__c> Empd1){
        for(Employee_Details__c Empd2:Empd1){
            if(Empd2.Age__c<21){
                Empd2.Date_of_Birth__c.adderror('Employee Age should be minimum 21 years');
            }
        }
    }
    /*Only one active salary record should be present for each employee*/
    public static void req92(list<Employee_Details__c> Empd1){
        for(Employee_Details__c Empd2:Empd1){
            IF(Empd2.Last_working_date__c==null && Empd2.Employee_Active_status__c==true){
                Salary_Record__c sal1=new Salary_Record__c();
                sal1.EMPLOYEE_NAME__c=Empd2.id;
                insert sal1;
            }
        }       
    }
    /*In employee master tab cretae a list view to show all ACTIVE employees*/
     public static void req28(list<Employee_Details__c> Empd1){
        for(Employee_Details__c Empd2:Empd1){
            IF(Empd2.Employee_Active_status__c==true){
                Empd2.Employe_status__c='ACTIVE,';
        }       
    }
}
    /*In employee master tab cretae a list view to show all employee whose monthly gross more than 50000*/
    public static void req30(list<Salary_Record__c>sal1){
        set<id> sal1set=new  set<id>();
        for(Salary_Record__c sal2:sal1){
            if(sal2.EMPLOYEE_NAME__c!=null){
            sal1set.add(sal2.EMPLOYEE_NAME__c);
            }
        }
            list<Employee_Details__c> Empd1=[SELECT id,name,Monthly_salary__c from  Employee_Details__c where id in: sal1set];
            for(Employee_Details__c Empd2:Empd1){
                Empd2.Monthly_salary__c=Sal1[0].Monthly_Gross_Salary__c;
            }
            update Empd1;
    }
    /*duplicate records delete*/
    public static void masssaldel(){
      List<Salary_Record__c> Accounts = [Select ID, Name from Salary_Record__c];
set<string> DuplicateCheck = new set<string>();
set<Id> DupAccountIds = new set<Id>();
for(Salary_Record__c acc: Accounts){
	if(!DuplicateCheck.add(acc.Name))
	DupAccountIds.add(acc.Id);
}

delete [select Id from Salary_Record__c where Id IN :DupAccountIds];
    }
}