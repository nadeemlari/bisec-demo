targetScope= 'subscription'
param rgName string ='izaanRg'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01'={
  name:rgName
  location:'centralindia'
  tags:{
    'envoiremnet':'dev'
  }
}

module vnet 'module/vnet.bicep' ={
  name:'vnet-izaan'
  scope: rg
  params:{
    vnetName:'vnet-izaan'
    vnetAddressPrefix:'10.10.0.0/16'
    vnetSubnets:[
      {
        name:'servers'
        addressPrefix:'10.10.1.0/24'
      }
      {
        name:'azureBastionSubnet'
        addressPrefix:'10.10.2.0/24'
      }
     
    ] 
  }
}

module bastion 'module/bastion.bicep'={
  name:'bastion-izaan'
  scope: rg
  params:{
     bastionName:'bastion-izaan'
      vnetName: vnet.outputs.name
  }
   
}
