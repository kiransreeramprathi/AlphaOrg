public class task80 
{
public static void ascinumber()
{
     String str = 'kå∫∆irµa2nl√øuu';
    system.debug('before removal '+str);
    str = str.replaceAll('[^a-zA-z]','');
    system.debug(str);
}
}