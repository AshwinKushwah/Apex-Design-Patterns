/*
* @description : 
* @author : Ashwin kushwah
* 
*/
public with sharing class AccountHandlerSingleton {
    public AccountHandlerSingleton() {

    }

    public static void onBeforeInsert(){
        RegionManagerUtilitySingleton utils = RegionManagerUtilitySingleton.getInstance();
        for(Account acc : (List<Account>) Trigger.New){
            acc.Region_Manager__c = utils.regionMapSingle.get(acc.Region__c);
        }
    }

    public static void onBeforeUpdate(){
        RegionManagerUtilitySingleton utils = RegionManagerUtilitySingleton.getInstance();
        for(Account acc : (List<Account>) Trigger.New){
            acc.Region_Manager__c = utils.regionMapSingle.get(acc.Region__c);
        }
    }
}