trigger beforInsertionTrigger on Account (before insert) {

   system.debug('Trigger called '+Trigger.new);

}