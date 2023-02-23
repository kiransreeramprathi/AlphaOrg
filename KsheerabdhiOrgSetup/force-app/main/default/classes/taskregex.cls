public class taskregex 
{
public static void validateEmail(String email) 
{
    string regemail = '[a-zA-Z0-9_:-:.]+[@][a-zA-z]+[:.][a-z]{2,3}';
	Pattern MyPattern = Pattern.compile(regemail);
	Matcher MyMatcher = MyPattern.matcher(email);
    if(MyMatcher.matches())
    {
        system.debug('it is a validmail'+mymatcher);
    }
    else
    {
      system.debug('enter valid mail id ');	  
    }
	
	}
}