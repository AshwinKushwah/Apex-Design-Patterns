/*
* @description : 
* @author : Ashwin kushwah
* 
*/
public with sharing class AccountHandler {
    public AccountHandler() {

    }

    public static void onBeforeInsert(){
        RegionManagerUtility utils = new RegionManagerUtility();
        for(Account acc : (List<Account>) Trigger.New){
            acc.Region_Manager__c = utils.regionMap.get(acc.Region__c);
        }
    }

    public static void onBeforeUpdate(){
        RegionManagerUtility utils = new RegionManagerUtility();
        for(Account acc : (List<Account>) Trigger.New){
            acc.Region_Manager__c = utils.regionMap.get(acc.Region__c);
        }
    }
}