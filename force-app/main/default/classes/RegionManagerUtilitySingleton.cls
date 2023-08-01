/*
* @description : 
* @author : Ashwin kushwah
* 
*/
public with sharing class RegionManagerUtilitySingleton {

    private static RegionManagerUtilitySingleton utilsSingle {get; private set;}
    public Map<String, String> regionMapSingle {get; private set;}

    private RegionManagerUtilitySingleton() {
        this.regionMapSingle = new Map<String, String>();
        for(Region_Manager__c regionM : [Select Id, Region__c, Manager__c From Region_Manager__c LIMIT 50]){
            regionMapSingle.put(regionM.Region__c, regionM.Id);
        }
    }

    public static RegionManagerUtilitySingleton getInstance(){
        if(utilsSingle == null){
            utilsSingle = new RegionManagerUtilitySingleton();
        }
        return utilsSingle;
    }
}