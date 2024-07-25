param privateEndpoints_endpoint_tfaxslylokb24_name string = 'endpoint-tfaxslylokb24'
param databaseAccounts_meetingroomreservation_server_externalid string = '/subscriptions/1d971a63-d3f3-49f3-8682-09958f6338ef/resourceGroups/meetingroomreservation/providers/Microsoft.DocumentDb/databaseAccounts/meetingroomreservation-server'
param virtualNetworks_cosmosvnet_externalid string = '/subscriptions/1d971a63-d3f3-49f3-8682-09958f6338ef/resourceGroups/meetingroomreservation/providers/Microsoft.Network/virtualNetworks/cosmosvnet'
param privateDnsZones_privatelink_mongo_cosmos_azure_com_externalid string = '/subscriptions/1d971a63-d3f3-49f3-8682-09958f6338ef/resourceGroups/meetingroomreservation/providers/Microsoft.Network/privateDnsZones/privatelink.mongo.cosmos.azure.com'

resource privateEndpoints_endpoint_tfaxslylokb24_name_resource 'Microsoft.Network/privateEndpoints@2023-11-01' = {
  name: privateEndpoints_endpoint_tfaxslylokb24_name
  location: 'northeurope'
  properties: {
    privateLinkServiceConnections: [
      {
        // Updated the name to be unique and added a direct reference instead of self-referencing ID
        name: '${privateEndpoints_endpoint_tfaxslylokb24_name}-connection'
        properties: {
          privateLinkServiceId: databaseAccounts_meetingroomreservation_server_externalid
          groupIds: [
            'MongoDB'
          ]
          privateLinkServiceConnectionState: {
            status: 'Approved'
            actionsRequired: 'None'
          }
        }
      }
    ]
    manualPrivateLinkServiceConnections: []
    subnet: {
      id: '${virtualNetworks_cosmosvnet_externalid}/subnets/subnet-tfaxslylokb24'
    }
    ipConfigurations: []
    customDnsConfigs: []
  }
}

resource privateEndpoints_endpoint_tfaxslylokb24_name_default 'Microsoft.Network/privateEndpoints/privateDnsZoneGroups@2023-11-01' = {
  name: '${privateEndpoints_endpoint_tfaxslylokb24_name}/default'
  properties: {
    privateDnsZoneConfigs: [
      {
        name: 'privatelink.mongo.cosmos.azure.com'
        properties: {
          privateDnsZoneId: privateDnsZones_privatelink_mongo_cosmos_azure_com_externalid
        }
      }
    ]
  }
  dependsOn: [
    privateEndpoints_endpoint_tfaxslylokb24_name_resource
  ]
}
