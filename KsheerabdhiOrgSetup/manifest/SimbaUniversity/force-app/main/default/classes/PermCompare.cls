public class PermCompare {
    public static void makeGetCallout() {
        string strFields = 'SobjectType,PermissionsCreate,PermissionsRead,PermissionsEdit,PermissionsDelete,PermissionsModifyAllRecords,PermissionsViewAllRecords';
        string strQuery = 'SELECT+'+strFields+'+FROM'+'+ObjectPermissions';
        // Define the Named Credential
        HttpRequest req = new HttpRequest();
        //req.setEndpoint('callout:permCompare_Named_credentilas/services/data/v51.0/query?q=SELECT+Id,Name+FROM+Account+LIMIT+100');
        req.setEndpoint('callout:permCompare_Named_credentilas/services/data/v51.0/query?q='+strQuery);
        system.debug('setEndpoint::'+req);
        req.setMethod('GET');
        req.setHeader('Authorization', 'Bearer ' + '{!$Credential.permCompare_Named_credentilas.access_token}');
        // Send the HTTP Request
        Http http = new Http();
        HTTPResponse res = http.send(req);
        system.debug('Response code:: '+res.getBody());
       /* // Parse the Response
        List<ObjectPermissions> accounts = new List<ObjectPermissions>();
        if (res.getStatusCode() == 200) {
            Map<String, Object> responseMap = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
            List<Object> records = (List<Object>) responseMap.get('records');
            system.debug('records:: '+records);
            for (Object record : records) {
                Map<String, Object> recordMap = (Map<String, Object>) record;
                ObjectPermissions account = new ObjectPermissions();
                account.Id = (String) recordMap.get('Id');
                account.Name = (String) recordMap.get('Name');
                accounts.add(account);
                account.Id = (string)recordMap.get('Id');
				accounts.add(account);
				system.debug('accounts:: '+accounts);                
            }
        }*/
    }
}