@description('Name of Storage Account')
param nameSa string 
@description('Tier ')
@allowed(['Premium_LRS'
'Standard_LRS' 
'Premium_ZRS'
])
param sku string
@description('Was darf es den sein')
@allowed(['BlobStorage'
'StorageV2'
])
param kind string 

resource sa 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: nameSa
  location: resourceGroup().location
  sku: {  
    name:  sku
  }
  kind: kind
}
