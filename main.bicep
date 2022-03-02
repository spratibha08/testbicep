@maxLength(11)
param storageAccountPrefix string = 'bicep'


var sta = '${storageAccountPrefix}${uniqueString(subscription().id)}'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: sta
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
    tier: 'Premium'
  }
}
