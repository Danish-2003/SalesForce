public with sharing class studentClass {

    public static void customObj(){
        student__c student = new student__c(
            Name = 'Danish',
            Age__c = 22,
            Gender__c = 'Male',
            Address__c = 'New Delhi');

            List<student__c> studentList = new List<student__c>{student};

            insert studentList;

            system.debug('Student Inserted Successfully');
    }

    public static void insertBulk(){
        List<student__c> newStudents = new List<student__c>{
            new student__c(Name = 'Walisha',Age__c = 18,Gender__c = 'Female',Address__c = 'Ajmer'),
            new Student__c(Name='Alice', Age__c=20, Gender__c='Female', Address__c='Mumbai'),
            new student__c(Name='Bob', Age__c=21, Gender__c='Male', Address__c='Chennai'),
            new student__c(Name='Charlie', Age__c=22, Gender__c='Male', Address__c='Delhi'),
            new student__c(Name='Diana', Age__c=23, Gender__c='Female', Address__c='Pune'),
            new student__c(Name='Ethan', Age__c=24, Gender__c='Male', Address__c='Kolkata')
        };
        insert newStudents;
        system.debug('All Students Inserted Successfully');
    }

    public static Integer getRandomAge(){
        return 18 + Math.abs(Math.mod(Crypto.getRandomInteger(),8));

    }
    public static String getRandomName(){
        List<String> names = new List<String>{
            'Alice', 'Bob', 'Charlie', 'Diana', 'Ethan', 'Fiona', 'George', 'Hannah', 'Isaac', 'Jasmine', 'Kai', 'Liam', 'Mia', 'Nathan', 'Olivia', 'Peter', 'Quinn', 'Rachel', 'Sam', 'Tina', 'Uma', 'Victor', 'Wendy', 'Xander', 'Yara', 'Zach','walisha','Danish'
        };
        Integer index = math.abs(math.mod(Crypto.getRandomInteger(),names.size()));
        return names[index];

    }
    public static String getRandomGender(){

        return math.mod(Crypto.getRandomInteger(),2) == 0 ? 'Male':'Female';

    }
    public static String getRandomAddress(){
        List<String> city = new List<String>{
            'New Delhi', 'Mumbai', 'Chennai', 'Kolkata', 'Pune', 'Hyderabad', 'Bangalore', 'Ahmedabad', 'Jaipur', 'Lucknow', 'Surat', 'Vadodara', 'Indore', 'Bhopal', 'Ludhiana', 'Patna', 'Coimbatore', 'Thiruvananthapuram', 'Agra', 'Nagpur','Ajmer'
        };
        Integer index = math.abs(math.mod(Crypto.getRandomInteger(),city.size()));
        return city[index];

    }

    public static void randomStudentInsert(Integer n){
        List<student__c> st = new List<student__c>();
        for(integer i  = 0; i<n; i++){
            st.add( 
                new student__c(
                Name = getRandomName(),
                age__c = getRandomAge(),
                gender__c = getRandomGender(),
                address__c = getRandomAddress()
                )
            );
        }
        insert st;
        system.debug('Random Student Inserted Successfully ');
    }

    public static void getListSize(){

        
        List<student__c> s = [SELECT Id FROM student__c];
        system.debug('Size of the list is : '+s.size());
    }

    public static void print(List<student__c> s){

        system.debug('All Students ');
        system.debug('\n');

        for(student__c st : s){
            
            system.debug(JSON.serialize(st));
            
        }
        system.debug('The size of the table is : '+s.size());
        system.debug('\n');

        Integer totalStudent = [SELECT COUNT() FROM student__c];
        system.debug('Size of list is => '+totalStudent);


    }
}