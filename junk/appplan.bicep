@secure()
param sku string ='B1'
param namePrefix string
resource appPlan 'Microsoft.Web/serverfarms@2021-02-01' ={
  name: '${namePrefix}appPlan'
  location: resourceGroup().location
  kind: 'linux'
  sku:{
    name:sku
  }
  properties:{
    reserved: true
  }
}
output planId string = appPlan.id
