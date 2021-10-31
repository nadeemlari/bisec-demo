resource storageres 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  location: resourceGroup().location
  name: 'nadeemlaristorage123'
  kind: 'Storage'
  sku:{
     name:'Standard_LRS'
     
  }
}
