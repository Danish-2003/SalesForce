public with sharing class accountTriggerHandler {


   // Before Insert Trigger 
   public static void updateAccountNumberField(List<Account>acclist){

      system.debug('Account List is '+ acclist);
      system.debug('From Account Trigger Handler');

      for(Account acc  : acclist){

        system.debug('Industry is'+ acc.Industry);
        system.debug('is Available '+ acc.isAvailable__c);

        if(acc.Industry != NULL && acc.isAvailable__c== true){
            acc.AccountNumber = '1234567890';   
        }
        system.debug('Account Number is '+ acc.AccountNumber);
      }
   }


   // After Insert Trigger
   public static void createRelatedContact(List<Account> accList){

      List<Contact> con = new List<Contact>();

      for (Account acc : accList){
         Contact c = new Contact();
         c.AccountId = acc.Id;
         c.LastName = acc.Name;

         con.add(c);
      }

      if(!con.isEmpty()){
         insert con;
      }
      
   }

   // Before Update Trigger
   public static void updateAccNum(Map<Id, Account>oldAccMap,List<Account>accList){
        
      system.debug('New Account List is '+ accList);
      system.debug('Old Account LIst is '+ oldAccMap);

      if(oldAccMap.get(accList[0].Id).Industry != acclist[0].Industry){ 
         accList[0].AccountNumber = '777777';
      }else {
         accList[0].AccountNumber = '66666';        
      }
   }


   //  After Update Trigger
   public static void updateRelatedContactPhone(Map<Id,Account> OldAccMap,List<Account>accList){

      // if(OldAccMap.get(accList[0].Id).Phone != acclist[0].Phone && accList[0].rating =='Hot'){
      //    system.debug('Condition met');
      //    system.debug('Old Phone Number is '+OldAccMap.get(accList[0].Id).Phone);
      //    system.debug('New Phone Number is '+accList[0].Phone);
      // }

      Map<Id,Account>accountMap = new Map<Id,Account>();
      List<Contact>contactList = new List<Contact>();

      for(Account acc : accList){

         if(OldAccMap != NULL && acc.Phone != oldAccMap.get(acc.Id).phone && acc.rating == 'Hot'){

            accountMap.put(acc.Id,acc);

          }
      }

      List<Contact> conList = [SELECT Id, Name, AccountId FROM Contact Where AccountId IN : accountMap.keySet()];


      for(Contact cn : conList){
         Contact cObject = new Contact();

         if(accountMap.containsKey(cn.AccountId)){
            cObject.Phone = accountMap.get(cn.AccountId).Phone;
            cObject.Id = cn.Id;
            contactList.add(cObject);
         }
      }

      if(!contactList.isEmpty()){
         update contactList;
      }


   }

}  