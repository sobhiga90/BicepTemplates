param location string
param name string
param skuName string
param accessTier string
param appName string

module stg './storage.bicep' = {
    name: 'storageaccount'
    params: {
        location: location
        name: name
        skuName: skuName
        accessTier: accessTier
    }
}

module logAnalyticsWorkspace './log-analytics.bicep' = {
  name: 'logAnalyticsWorkspaceDeploy'
  params: {
    appName: appName
    location: location
  }
}
