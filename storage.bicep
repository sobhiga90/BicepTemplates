  
resource myStorage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'bicepsto'
  location: 'location'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
        
  }
}