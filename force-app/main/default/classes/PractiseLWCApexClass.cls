public with sharing class PractiseLWCApexClass {
    @AuraEnabled(cacheable=true)
    public static Contact getSingleContactRecord(){
        Contact ct = [SELECT Id, Name, Title, Phone, Email, Picture__c
        FROM Contact ORDER BY CreatedDate ASC
        LIMIT 1];
        return ct;
    }
}