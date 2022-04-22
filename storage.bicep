param location string
param name string
param skuName string
param accessTier string

resource myStorage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: name
  location: location
  sku: {
    name: skuName
  }
  kind: 'StorageV2'
  properties: {
    accessTier: accessTier
        
  }
}
