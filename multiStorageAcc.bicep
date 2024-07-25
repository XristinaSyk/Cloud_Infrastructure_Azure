@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Storage/storageAccounts/multistorageacc')
resource multistorageacc 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  name: 'multistorageacc'
  location: 'northeurope'
  tags: {}
  properties: {
    dnsEndpointType: 'Standard'
    defaultToOAuthAuthentication: false
    publicNetworkAccess: 'Enabled'
    keyCreationTime: {
      key1: '2024-07-23T21:13:08.2349532Z'
      key2: '2024-07-23T21:13:08.2349532Z'
    }
    allowCrossTenantReplication: false
    privateEndpointConnections: []
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    allowSharedKeyAccess: true
    largeFileSharesState: 'Enabled'
    networkAcls: {
      ipv6Rules: []
      bypass: 'AzureServices'
      virtualNetworkRules: [
        {
          id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/webappSub'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/publicApiSub'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/blobSub'
          action: 'Allow'
          state: 'Succeeded'
        }
      ]
      ipRules: []
      defaultAction: 'Deny'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      requireInfrastructureEncryption: false
      services: {
        file: {
          keyType: 'Account'
          enabled: true
          lastEnabledTime: '2024-07-23T21:13:08.3756167Z'
        }
        blob: {
          keyType: 'Account'
          enabled: true
          lastEnabledTime: '2024-07-23T21:13:08.3756167Z'
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
    provisioningState: 'Succeeded'
    creationTime: '2024-07-23T21:13:08.0474367Z'
    primaryEndpoints: {
      dfs: 'https://multistorageacc.dfs.core.windows.net/'
      web: 'https://multistorageacc.z16.web.core.windows.net/'
      blob: 'https://multistorageacc.blob.core.windows.net/'
      queue: 'https://multistorageacc.queue.core.windows.net/'
      table: 'https://multistorageacc.table.core.windows.net/'
      file: 'https://multistorageacc.file.core.windows.net/'
    }
    primaryLocation: 'northeurope'
    statusOfPrimary: 'available'
  }
}
