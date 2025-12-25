// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents




string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);
printHelloApexClass.sayHello();
firstApexClass obj = new firstApexClass();
firstApexClass.calculate();
firstApexClass.DataTypesAndVariables();
controlFlowStatements.ifElseStatements();
loops.loops();
apexClasses.rectangle rect = new apexClasses.rectangle();
rect.area();  
apexClasses.circle cir = new apexClasses.circle();
cir.area();
apexClasses.triangle tri = new apexClasses.triangle();
tri.area();

employePurchaseClass emp = new employePurchaseClass();
double empAnswer = emp.discount();
system.debug('Discount for Employee : '+empAnswer);

customerPurchaseClass cust = new customerPurchaseClass();
double custAnswer = cust.discount();
system.debug('Discount for customer : '+custAnswer); 
apexMethods.demoMethods();

apexMethods obj = new apexMethods(10);
 