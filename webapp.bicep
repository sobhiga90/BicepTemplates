param location string
param name string
param skuName string
param accessTier string
param appName string
param webAppName string // Generate unique String for web app name
param sku string  // The SKU of App Service Plan
param linuxFxVersion string // The runtime stack of web app
param repositoryUrl string 
param branch string 
var appServicePlanName = toLower('AppServicePlan-${webAppName}')
var webSiteName = toLower('wapp-${webAppName}')
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
resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: appServicePlanName
  location: location
  properties: {
    reserved: true
  }
  sku: {
    name: sku
  }
  kind: 'linux'
}
resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: webSiteName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: linuxFxVersion
    }
  }
}
resource srcControls 'Microsoft.Web/sites/sourcecontrols@2021-01-01' = {
  name: '${appService.name}/web'
  properties: {
    repoUrl: repositoryUrl
    branch: branch
    isManualIntegration: true
  }
}

