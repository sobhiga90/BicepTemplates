module stg './storage.bicep' = {
    name: 'storageaccount'
    params: {
        location: 'eastus'
        name: 'testteststo'
        skuName: 'Standard_LRS'
        accessTier: 'hot'
    }
}
module logAnalyticsWorkspace './log-analytics.bicep' = {
  name: 'logAnalyticsWorkspaceDeploy'
  params: {
    appName: 'testapp'
  }
}
