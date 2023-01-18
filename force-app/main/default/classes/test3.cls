@isTest
public with sharing class test3{
    @isTest
    public static void test3() {
    for(Integer i=0;i<150;i++){
     insert new Account(name='TestAccount'+i);
     }
     //insert new Account(name='TestAccount151');
     Test.startTest();//Governor limit reset to 0
     for(Integer i=0;i<150;i++){
     insert new Account(name='SampleAccount'+i);
     }
     Test.stopTest();//Governor limit back to maximum 150
     }
    
}
    