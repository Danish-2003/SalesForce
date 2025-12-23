public with sharing class controlFlowStatements {

public static void ifElseStatements(){
        Integer x = 5;
        Integer y = 5;
        Integer a=1,b=1;
        
        if(x==y && a==b) {
            system.debug('true');
        }else{
            system.debug('false');
        }
}
}