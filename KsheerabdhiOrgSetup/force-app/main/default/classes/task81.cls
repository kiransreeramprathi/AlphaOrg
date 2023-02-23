public class task81 
{
public static void equal( String a, String b, String c)
{
        integer ans = 0;
       integer n = a.length();
        string[] str1 = a.split('');
        string[] str2 = b.split('');
        string[] str3 = c.split('');
    system.debug(str1);
     system.debug(str2);
     system.debug(str3);
        for(integer i=0;i<n;i++){
            string x = str1[i];
            string y = str2[i];
            string z = str3[i];
            if(x==y && y==z){
                
            } else if (x == y || y == z || x == z){
                ans++;
            }else{
                ans+=2;
            }
        }
        system.debug(ans);
    }
}