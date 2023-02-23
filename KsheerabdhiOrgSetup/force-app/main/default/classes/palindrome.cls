public class palindrome 
{   
    public static void palindrome(String inputString)
    {
        String reverseString ='';
        inputString = inputString.toUpperCase();
        reverseString = inputString.reverse();
        if(inputString.equals(reverseString)){
            system.debug('String is Palindrome');
        }
        else{
            system.debug('String is not Palindrome');
        }   
    } 
}