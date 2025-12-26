public with sharing class dmlMethods {
    public static void demoMethod() {

        insertDml();
        system.debug('Data Inserted Successfully');
    }
    public static void insertDml(){

        // Not a good practice to insert data
        student__c st = new student__c(
            Name = 'Alisha',
            Age__c = 26,
            Gender__c = 'Female',
            Address__c = 'Ajmer'
        );
        insert st;

    }
    public static void bestPracticeOfInsertion(){
        //Best practice of inserting the data

        // The first thing we need to do is to create a list of the object and then use Add method to add the data to the student list

        student__c st = new student__c(
            Name = 'Alisha',
            Age__c = 26,
            Gender__c = 'Female',
            Address__c = 'Ajmer'
        );

        List<student__c> stList = new List<student__c>();

        stList.add(st);

        if (! stList.isEmpty()){
            insert stList;
        }
    }
}