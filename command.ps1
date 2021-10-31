az deployment group create -g testrg -f .\storage.bicep -c

az deployment subcription create -g testrg -f .\storage.bicep -c

az deployment sub create -f .\main.bicep -l centralindia  -c 