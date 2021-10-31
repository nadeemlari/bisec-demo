param bastionName string
param vnetName string

resource bastionIp 'Microsoft.Network/publicIPAddresses@2021-03-01' = {
  name: 'ip-${bastionName}'
  location: resourceGroup().location
  sku:{
     name:'Standard'
  }
  properties:{
    publicIPAllocationMethod:'Static'
  }
}

resource bastionHost 'Microsoft.Network/bastionHosts@2021-03-01'={
  name:bastionName
  location:resourceGroup().location
  properties:{
    ipConfigurations:[
      {
         name:'ipconfig1'
         properties:{
           privateIPAllocationMethod: 'Dynamic'
           publicIPAddress:{
              id: bastionIp.id
           }
            subnet:{
              id: resourceId('Microsoft.Network/virtualNetworks/subnets',vnetName,'azureBastionSubnet')
            }
         }
      }
    ]
  }
}
