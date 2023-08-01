/*
* @description : 
* @author : Ashwin kushwah
* 
*/


public with sharing class RegionManagerUtility {

    public Map<String, String> regionMap {get; private set;}

    public RegionManagerUtility() {
        this.regionMap = new Map<String, String>();
        for(Region_Manager__c regionM : [Select Id, Manager__c, Region__c From Region_Manager__c]){
            this.regionMap.put(regionM.Region__c , regionM.Id);
        }
    }
}