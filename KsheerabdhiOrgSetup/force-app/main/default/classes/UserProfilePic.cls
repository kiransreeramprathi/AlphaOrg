public class UserProfilePic {
    public static void fullPicture(){
        list<user> ulist=[select FullPhotoUrl,FullProfilePhotoContains__c from user];
        system.debug(ulist);
        for(user ul:ulist){
            if(ul.FullPhotoUrl.contains('profilephoto/005')==true){
                ul.FullProfilePhotoContains__c=true;
            update ul;
            }
        }
        
    }
}