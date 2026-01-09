trigger accountTrigger on Account (before insert,after insert, before update) {


    system.debug('Trigger called '+Trigger.new);

    if(Trigger.isInsert){
        if(Trigger.isBefore){

            accountTriggerHandler.updateAccountNumberField(Trigger.new);

        }else if (Trigger.isAfter){

            accountTriggerHandler.createRelatedContact(Trigger.new);
        }
    }

    if(Trigger.isUpdate){
        if(Trigger.isBefore){

            accountTriggerHandler.updateAccNum(Trigger.oldMap,Trigger.new); 
            
        }else if (Trigger.isAfter){

            accountTriggerHandler.updateRelatedContactPhone(Trigger.oldMap,Trigger.new);
        }
    }
}