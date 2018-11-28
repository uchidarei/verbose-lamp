#動的SOQL


# Base
List<sObject> sobjList = Database.query(string);

# Allowed
String myTestString = 'TestName';
List<sObject> sobjList = Database.query('SELECT Id FROM MyCustomObject__c WHERE Name = :myTestString');

# Allowed
String soql = 'SELECT Id FROM Account WHERE NAME = '+ String.escapeSingleQuotes(VALUE);
List<Account> accountList = Database.query(soql);

#Allowd , too - select via String variable
String resolvedField1 = myVariable.field1__c;
List<sObject> sobjList = Database.query('SELECT Id FROM MyCustomObject__c WHERE field1__c = ' + resolvedField1);

#Not Allowed - select directly
MyCustomObject__c myVariable = new MyCustomObject__c(field1__c ='TestField');
List<sObject> sobjList = Database.query('SELECT Id FROM MyCustomObject__c WHERE field1__c = :myVariable.field1__c');


[https://qiita.com/TomoShiozawa/items/30fbe09e9974624fddbe]
(official)[https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_dynamic_soql.htm]
