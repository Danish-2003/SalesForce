public with sharing class sObjectClass {
   
    public static void demoMethod(){

        // Standard Object
        Account acc = new Account();

        acc.Name = 'SalesForce Account';
        insert acc; 
        
        // custom object
        student__c st = new student__c();

        // generic object 
        sObject sObj = new Account();
        Account a = (Account)sObj;
         

    }

    
}