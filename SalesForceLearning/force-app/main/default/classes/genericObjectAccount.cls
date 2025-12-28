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
        acc.Name = 'Danish';
        acc.Phone = '88606788XX';
        acc.Industry = 'Manufacturing';

        List<Account> accList = new List<Account>();
        accList.add(acc);
        
        if(!accList.isEmpty()){
            update accList;
        }
        system.debug('Account Updated Successfully');
    }

    public static void updateContact(){
        
        Id accId = [SELECT Id, Name FROM Account WHERE name = 'Danish'].Id;

        Contact con = new Contact(
            firstName = 'Syeda walisha',
            lastName = 'Chishty',
            Phone = '98796528',
            AccountId = accId
        );
        upsert con;
    }


}