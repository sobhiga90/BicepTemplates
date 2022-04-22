param location string = 'westus'
param name = 'bicepsto' 
resource myStorage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: name
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
        
  }
}