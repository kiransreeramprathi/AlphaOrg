public class Basic_tasks {
    public integer input1{get;set;}
     public integer input2{get;set;}
     public integer outputvalue{get;set;}
    public string inputA{get;set;}
    public string inputB{get;set;}
    public string output{get;set;}
    public void Addition(){
        outputvalue=input1+input2;
    }
    public void substract(){
        outputvalue=input1-input2;
    }public void divide(){
        outputvalue=input1/input2;
    }
    public void addstrings(){
        output=inputA+' '+inputB;
    }
    public void stringlength(){
        outputvalue=inputA.length()+inputB.length();
    }public void palindrome(){
        if(inputA==inputA.reverse()){
            output='string is palindrome';
        }else(output='string is not palindrome');
    }
    public static void dt(){
        date yesterday = date.today().addDays(-1);
        system.debug('yesterday'+yesterday);
    }
}