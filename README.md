# Metadata Dictionary for Salesforce
[![License: MIT](https://img.shields.io/github/license/amitjpr/SalesforceMetadataDictionary?style=flat&logo=appveyor)]((https://opensource.org/licenses/MIT))
[![Travis CI](https://img.shields.io/travis/amitjpr/SalesforceMetadataDictionary?style=flat&logo=appveyor)](https://travis-ci.com/amitjpr/SalesforceMetadataDictionary)
[![Deploy to Salesforce](https://img.shields.io/badge/Salesforce-Deploy-blue?style=flat&logo=appveyor)](https://githubsfdeploy.herokuapp.com?owner=amitjpr&repo=SalesforceMetadataDictionary&ref=master)






Designed for Salesforce admins & developers. Plan, manage and document metadata changes for your Salesforce org.

## Using the App
1. Install in your Salesforce org
2. Run this Apex script to schedule automatic analysis, automatic backup (to static resources) and a one-time analysis
    ```
    // One-time analysis to get immediate results
    Database.executebatch(new MetadataSObjectAnalyzer());

    // Scan for metadata changes every 5 minutes
    MetadataSObjectAnalysisScheduler.scheduleEveryXMinutes(5);

    // Backup the app's data to static resources every hour
    MetadataSObjectBackupScheduler.scheduleHourly(0);
    ExternalSystemBackupScheduler.scheduleHourly(0);

    ```
3. In Lightning Experience, switch to the app 'Metadata Dictionary'
