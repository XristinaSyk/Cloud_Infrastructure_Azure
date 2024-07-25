@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG')
resource webAppNSG 'Microsoft.Network/networkSecurityGroups@2024-01-01' = {
  name: 'webAppNSG'
  etag: 'W/"6711fe93-5679-40ba-b913-7320c2da23a7"'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: 'da2a669a-e16f-4dba-8ad4-514c06bd43f5'
    securityRules: [
      {
        name: 'AllowAnyHTTPSOutbound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG/securityRules/AllowAnyHTTPSOutbound'
        etag: 'W/"6711fe93-5679-40ba-b913-7320c2da23a7"'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          provisioningState: 'Succeeded'
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '10.0.3.0/24'
          access: 'Allow'
          priority: 100
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
    defaultSecurityRules: [
      {
        name: 'AllowVnetInBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG/defaultSecurityRules/AllowVnetInBound'
        etag: 'W/"6711fe93-5679-40ba-b913-7320c2da23a7"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Allow inbound traffic from all VMs in VNET'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 65000
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowAzureLoadBalancerInBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG/defaultSecurityRules/AllowAzureLoadBalancerInBound'
        etag: 'W/"6711fe93-5679-40ba-b913-7320c2da23a7"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Allow inbound traffic from azure load balancer'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: 'AzureLoadBalancer'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 65001
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'DenyAllInBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG/defaultSecurityRules/DenyAllInBound'
        etag: 'W/"6711fe93-5679-40ba-b913-7320c2da23a7"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Deny all inbound traffic'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Deny'
          priority: 65500
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowVnetOutBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG/defaultSecurityRules/AllowVnetOutBound'
        etag: 'W/"6711fe93-5679-40ba-b913-7320c2da23a7"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Allow outbound traffic from all VMs to all VMs in VNET'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 65000
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowInternetOutBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG/defaultSecurityRules/AllowInternetOutBound'
        etag: 'W/"6711fe93-5679-40ba-b913-7320c2da23a7"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Allow outbound traffic from all VMs to Internet'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: 'Internet'
          access: 'Allow'
          priority: 65001
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'DenyAllOutBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG/defaultSecurityRules/DenyAllOutBound'
        etag: 'W/"6711fe93-5679-40ba-b913-7320c2da23a7"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Deny all outbound traffic'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Deny'
          priority: 65500
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
    subnets: [
      {
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/webappSub'
      }
    ]
  }
}
