module stg './storage.bicep' = {
    name: 'storageaccount'
    params: {
        location: eastus
        name: testtest
        skuName: Standard_LRS
        accessTier: hot
    }
}
module logAnalyticsWorkspace './log-analytics.bicep' = {
  name: 'logAnalyticsWorkspaceDeploy'
  params: {
    appName: testapp
  }
}
