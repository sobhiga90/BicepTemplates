resource myStorage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  location: 'useast'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
        
  }
}