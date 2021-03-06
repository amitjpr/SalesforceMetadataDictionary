/*****************************************************************************************************************
* This file is part of the Metadata Dictionary project for Salesforce, released under the MIT License.           *
* See LICENSE file or go to https://github.com/amitjpr/SalesforceMetadataDictionary for full license details.    *
*****************************************************************************************************************/
trigger MetadataField on MetadataField__c(before insert) {
    for(MetadataField__c metadataField : Trigger.new) {
        if(Uuid.isValid(metadataField.Uuid__c)) continue;

        metadataField.Uuid__c = new Uuid().getValue();
    }
}