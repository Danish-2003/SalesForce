public with sharing class apexMethods {

    // constructor
    public apexMethods(Integer n){
        integer i = n+2;
        system.debug('i value :'+i);
    }

    // PASSING PARAMETERS
    
    public  static void demoMethods() {
        // pass by value
        String str = 'Passing String to method';
        passByValue(str);
        system.debug('String after method call '+str);



        // pass by reference 

        List<Integer> emptyList = new List<Integer>();
        system.debug('Empty List '+emptyList);
        passByreference(emptyList);
        system.debug('Empty List '+emptyList);

    }


    //n this method will recieve primitive data type argument

    // we are passing s by value so its passing the copy of s

    // so if we change the value of s inside the method it will not reflect in the calling method

    public static void passByValue(String s){
        system.debug(s);
        s = 'String changed ';
    }


    public static void passByreference(List<Integer> listToFill){

        system.debug('List to fill '+listToFill);
        listToFill.add(1);
        listToFill.add(2);
        
        system.debug('List to fill '+listToFill);

    }
}