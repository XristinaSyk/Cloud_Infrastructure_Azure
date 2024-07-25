@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/azureFirewalls/firewall-app')
resource firewallapp 'Microsoft.Network/azureFirewalls@2024-01-01' = {
  name: 'firewall-app'
  etag: 'W/"a8b4fa79-ccc9-44ea-b4b8-aa21dfee1fff"'
  location: 'northeurope'
  tags: {
    'billing ': 'public'
  }
  zones: [
    '1'
  ]
  properties: {
    provisioningState: 'Succeeded'
    sku: {
      name: 'AZFW_VNet'
      tier: 'Standard'
    }
    threatIntelMode: 'Alert'
    additionalProperties: {}
    ipConfigurations: [
      {
        name: 'publicFirewallIP'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/azureFirewalls/firewall-app/azureFirewallIpConfigurations/publicFirewallIP'
        etag: 'W/"a8b4fa79-ccc9-44ea-b4b8-aa21dfee1fff"'
        type: 'Microsoft.Network/azureFirewalls/azureFirewallIpConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.3.4'
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/publicIPAddresses/publicFirewallIP'
          }
          subnet: {
            id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/AzureFirewallSubnet'
          }
        }
      }
    ]
    networkRuleCollections: []
    applicationRuleCollections: []
    natRuleCollections: []
  }
}
