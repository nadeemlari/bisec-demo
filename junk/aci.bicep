resource acigroup 'Microsoft.ContainerInstance/containerGroups@2021-07-01' ={bicep 
  name:'nadeemlarimsrrest'
   location: resourceGroup( ).location
   properties:{
      osType: 'Linux'
      containers:[
        {
           name:'msr2'v
           properties:{
              image:'nadeemlari/msr2rest'
              ports:[80]     
              
              
           }
        }
      ]
   }
}
