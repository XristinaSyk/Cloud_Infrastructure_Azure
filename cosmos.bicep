param databaseAccounts_meetingroomreservation_server_name string = 'meetingroomreservation-server'
param privateEndpoints_endpoint_tfaxslylokb24_externalid string = '/subscriptions/1d971a63-d3f3-49f3-8682-09958f6338ef/resourceGroups/meetingroomreservation/providers/Microsoft.Network/privateEndpoints/endpoint-tfaxslylokb24'

resource databaseAccounts_meetingroomreservation_server_name_resource 'Microsoft.DocumentDB/databaseAccounts@2024-05-15' = {
  name: databaseAccounts_meetingroomreservation_server_name
  location: 'North Europe'
  kind: 'MongoDB'
  identity: {
    type: 'None'
  }
  properties: {
    publicNetworkAccess: 'Disabled'
    enableAutomaticFailover: true
    enableMultipleWriteLocations: false
    isVirtualNetworkFilterEnabled: true
    virtualNetworkRules: []
    disableKeyBasedMetadataWriteAccess: false
    enableFreeTier: false
    enableAnalyticalStorage: false
    analyticalStorageConfiguration: {
      schemaType: 'FullFidelity'
    }
    databaseAccountOfferType: 'Standard'
    networkAclBypass: 'None'
    disableLocalAuth: false
    enablePartitionMerge: false
    enableBurstCapacity: false
    minimalTlsVersion: 'Tls12'
    consistencyPolicy: {
      defaultConsistencyLevel: 'Session'
      maxIntervalInSeconds: 5
      maxStalenessPrefix: 100
    }
    apiProperties: {
      serverVersion: '4.0'
    }
    locations: [
      {
        locationName: 'North Europe'
        failoverPriority: 0
        isZoneRedundant: false
      }
    ]
    cors: []
    capabilities: [
      {
        name: 'EnableMongo'
      }
      {
        name: 'DisableRateLimitingResponses'
      }
    ]
    ipRules: []
    backupPolicy: {
      type: 'Periodic'
      periodicModeProperties: {
        backupIntervalInMinutes: 240
        backupRetentionIntervalInHours: 8
        backupStorageRedundancy: 'Geo'
      }
    }
  }
}

resource databaseAccounts_meetingroomreservation_server_name_meetingroomreservation_database 'Microsoft.DocumentDB/databaseAccounts/mongodbDatabases@2024-05-15' = {
  parent: databaseAccounts_meetingroomreservation_server_name_resource
  name: 'meetingroomreservation-database'
  properties: {
    resource: {
      id: 'meetingroomreservation-database'
    }
  }
}

resource databaseAccounts_meetingroomreservation_server_name_privateEndpointConnection 'Microsoft.DocumentDB/databaseAccounts/privateEndpointConnections@2024-05-15' = {
  parent: databaseAccounts_meetingroomreservation_server_name_resource
  name: 'endpoint-tfaxslylokb24'
  properties: {
    privateEndpoint: {
      id: privateEndpoints_endpoint_tfaxslylokb24_externalid
    }
    privateLinkServiceConnectionState: {
      status: 'Approved'
      description: 'Approved by deployment script'
    }
    groupId: 'MongoDB'
  }
}
