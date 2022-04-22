resource myStorage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'ata2021bicepdiskstorage'
  location: 'uksouth'
  SKU: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
        
  }
}