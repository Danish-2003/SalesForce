public with sharing class dmlMethods {
    public static void demoMethod() {

        insertDml();
        system.debug('Data Inserted Successfully');
    }
    public static void insertDml(){

        student__c st = new student__c(
            Name = 'Tamanna',
            Age__c = 27,
            Gender__c = 'Female',
            Address__c = 'New Delhi'
        );
        insert st;

    }
}