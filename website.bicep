param location string = resourceGroup().location
param linuxFxVersion string = 'DOTNETCORE|8.0'
var appServicePlanName = 'MultisoftwarePlan'
var appServiceWebsite = 'MultisoftwareWebApp'

resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {
  name: appServicePlanName
  location: location
  properties: {
    reserved: true
    zoneRedundant: false
  }
  sku: {
    name: 'P0v3'
    tier: 'PremiumV3'
    size: 'P0v3'
    family: 'Pv3'
    capacity: 1
  }
  kind: 'linux'
  tags: { billing: 'public' }
}

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: appServiceWebsite
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      linuxFxVersion: linuxFxVersion
    }
  }
}
