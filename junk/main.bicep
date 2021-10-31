targetScope = 'subscription'
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name:'biceprg'
  location:deployment().location
}
// module appPlanDeploy 'appplan.bicep' ={
//   name:'appPlanDeploy'
//    scope: rg
//    params:{
//      sku:'B1'
//      namePrefix:'lari'
//    }
// }

module cg 'aci.bicep' ={
   name: 'cg'
   scope: rg
    
}
