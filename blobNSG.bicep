@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG')
resource blobNSG 'Microsoft.Network/networkSecurityGroups@2024-01-01' = {
  name: 'blobNSG'
  etag: 'W/"676ab329-7374-45e1-8dce-66d6165ababb"'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: '1e60e82e-2798-446b-868b-2fecb72d916c'
    securityRules: [
      {
        name: 'AllowAnyHTTPSInbound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG/securityRules/AllowAnyHTTPSInbound'
        etag: 'W/"676ab329-7374-45e1-8dce-66d6165ababb"'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          provisioningState: 'Succeeded'
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG/defaultSecurityRules/AllowVnetInBound'
        etag: 'W/"676ab329-7374-45e1-8dce-66d6165ababb"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG/defaultSecurityRules/AllowAzureLoadBalancerInBound'
        etag: 'W/"676ab329-7374-45e1-8dce-66d6165ababb"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG/defaultSecurityRules/DenyAllInBound'
        etag: 'W/"676ab329-7374-45e1-8dce-66d6165ababb"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG/defaultSecurityRules/AllowVnetOutBound'
        etag: 'W/"676ab329-7374-45e1-8dce-66d6165ababb"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG/defaultSecurityRules/AllowInternetOutBound'
        etag: 'W/"676ab329-7374-45e1-8dce-66d6165ababb"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG/defaultSecurityRules/DenyAllOutBound'
        etag: 'W/"676ab329-7374-45e1-8dce-66d6165ababb"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/blobSub'
      }
    ]
  }
}
