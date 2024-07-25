param privateDnsZones_privatelink_mongo_cosmos_azure_com_name string = 'privatelink.mongo.cosmos.azure.com'
param virtualNetworks_cosmosvnet_externalid string = '/subscriptions/1d971a63-d3f3-49f3-8682-09958f6338ef/resourceGroups/meetingroomreservation/providers/Microsoft.Network/virtualNetworks/cosmosvnet'

resource privateDnsZones_privatelink_mongo_cosmos_azure_com_name_resource 'Microsoft.Network/privateDnsZones@2020-06-01' = {
  name: privateDnsZones_privatelink_mongo_cosmos_azure_com_name
  location: 'global'
  properties: {}
}

resource privateDnsZones_privatelink_mongo_cosmos_azure_com_name_meetingroomreservation_server 'Microsoft.Network/privateDnsZones/A@2020-06-01' = {
  parent: privateDnsZones_privatelink_mongo_cosmos_azure_com_name_resource
  name: 'meetingroomreservation-server'
  properties: {
    metadata: {
      creator: 'created by private endpoint endpoint-tfaxslylokb24 with resource guid c00cac3e-c1d5-4bc1-885a-818af8f1c664'
    }
    ttl: 10
    aRecords: [
      {
        ipv4Address: '10.0.2.4'
      }
    ]
  }
}

resource privateDnsZones_privatelink_mongo_cosmos_azure_com_name_meetingroomreservation_server_northeurope 'Microsoft.Network/privateDnsZones/A@2020-06-01' = {
  parent: privateDnsZones_privatelink_mongo_cosmos_azure_com_name_resource
  name: 'meetingroomreservation-server-northeurope'
  properties: {
    metadata: {
      creator: 'created by private endpoint endpoint-tfaxslylokb24 with resource guid c00cac3e-c1d5-4bc1-885a-818af8f1c664'
    }
    ttl: 10
    aRecords: [
      {
        ipv4Address: '10.0.2.5'
      }
    ]
  }
}

resource Microsoft_Network_privateDnsZones_SOA_privateDnsZones_privatelink_mongo_cosmos_azure_com_name 'Microsoft.Network/privateDnsZones/SOA@2020-06-01' = {
  parent: privateDnsZones_privatelink_mongo_cosmos_azure_com_name_resource
  name: '@'
  properties: {
    ttl: 3600
    soaRecord: {
      email: 'azureprivatedns-host.microsoft.com'
      expireTime: 2419200
      host: 'azureprivatedns.net'
      minimumTtl: 10
      refreshTime: 3600
      retryTime: 300
      serialNumber: 1
    }
  }
}

resource privateDnsZones_privatelink_mongo_cosmos_azure_com_name_link_tfaxslylokb24 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2020-06-01' = {
  parent: privateDnsZones_privatelink_mongo_cosmos_azure_com_name_resource
  name: 'link-tfaxslylokb24'
  location: 'global'
  properties: {
    registrationEnabled: false
    virtualNetwork: {
      id: virtualNetworks_cosmosvnet_externalid
    }
  }
}
