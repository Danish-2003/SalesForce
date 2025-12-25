public with sharing class genericObjectAccount {


    public static void  accCreation() {

        Account DanishAccount = new Account(
            Name = 'Danish Account',
            BillingCountry = 'India',
            BillingState = 'Delhi',
            BillingCity = 'New Delhi');

        insert DanishAccount;
        system.debug('Account Created Successfully');
    }

    public static void updateAccount(){
        Account acc = [SELECT Id, Name FROM Account WHERE Name = 'Danish Account'];
        acc.Phone = '88606788XX';
        acc.Industry = 'Manufacturing';

        update acc;

        system.debug('Account Updated Successfully');
    }
}