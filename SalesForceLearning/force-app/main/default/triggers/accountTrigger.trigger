trigger accountTrigger on Account (before insert) {



    system.debug('Trigger called '+Trigger.new);

    for(Account acc  : Trigger.new){
        system.debug('Industry is'+ acc.Industry);
        system.debug('is Available '+ acc.isAvailable__c);

        if(acc.Industry != NULL && acc.isAvailable__c== true){
            acc.AccountNumber = '1234567890';   
        }
        system.debug('Account Number is '+ acc.AccountNumber);

    }

    



}