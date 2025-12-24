public with sharing class loops {
   
    public static void loops(){
        // for loop 
        for(Integer i = 0; i<10;){
            system.debug('i value :'+i);
            i++;
        }

        // for loop for Iteration in list or sets

        list<Account> accountList = [SELECT Id, Name FROM Account LIMIT 10];

        system.debug('account '+accountList);

        for(Account acc : accountList){
            system.debug('Account => Name: '+ acc.name +' , '+'Id '+acc.Id);
            system.debug('\n');
        }

        system.debug('\n');
        system.debug(' Account Details in JSON format');
        system.debug('\n');

        // Getting Data in JSON Formate 

        for(Account acc : accountList){
            system.debug(JSON.serialize(acc));
            system.debug('\n');
        }

        // for loops for SOQL 

       for(Account  soqlAcc : [SELECT Id, name FROM Account LIMIT 10]){

        system.debug(JSON.serialize(soqlAcc));
        system.debug('\n');

       }
    }  
}

