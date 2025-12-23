public with sharing class firstApexClass {

    static final Integer PRIVATE_INT_CONST = 20;
    static final Integer PRIVATE_INT_CONST_2;

    public firstApexClass() {
        System.debug('Hello SalesForce from VS code !');
    }

    public static void DataTypesAndVariables(){
        Integer i = 10;
        String s = 'first Apex Class';
        List<Account> accountList = [SELECT Id, name FROM Account LIMIT 1];

        System.debug('i value :'+i);
        System.debug('s value :'+s);
        System.debug('Acclist value :'+accountList);

        Integer x = 5;
        Integer y = 5;
        Integer a=1,b=1;

        if(x==y && a==b) {
            system.debug('true');
        }else{
            system.debug('false');
        }
    
        y = ++x;
        system.debug('y value after, y = ++x  :'+y);
        
        //Ternary Operator

        Integer TernaryResult = x==y?2:3;
        System.debug('TernaryResult value :'+TernaryResult);

        // EExpression operator

        system.debug('result'+(x==y));
        system.debug('result'+(x!=y));
        system.debug('result'+(x>y));
        system.debug('result'+(x>=y));
        system.debug('result'+(x<y));
        system.debug('result'+(x<=y));

        
    }

    public static Integer calculate(){
        return 5+3;
    }
    static{
        PRIVATE_INT_CONST_2 = calculate();
    }


}

