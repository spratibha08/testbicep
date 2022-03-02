@maxLength(11)
param storageAccountPrefix string = 'st'
param storageAccountName string = 'biceptest002'


var sta = '${storageAccountPrefix}${storageAccountName}'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: sta
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
    tier: 'Premium'
  }
}
