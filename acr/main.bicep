targetScope= 'subscription'
param rgName string ='izaanRg'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01'={
  name:rgName
  location:'centralindia'
  tags:{
    'envoiremnet':'dev'
  }
}

module acr 'acr.bicep' ={
   name:'mnlari'
   scope:rg
  

}
