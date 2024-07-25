@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG')
resource publicApiNSG 'Microsoft.Network/networkSecurityGroups@2024-01-01' = {
  name: 'publicApiNSG'
  etag: 'W/"e9a09d7e-8c00-4ec4-9f6c-99aecf57fe91"'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: '0a1b5ca5-fb0a-49f1-a42d-3c811650646b'
    securityRules: [
      {
        name: 'AllowAnyHTTPSOutbound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG/securityRules/AllowAnyHTTPSOutbound'
        etag: 'W/"e9a09d7e-8c00-4ec4-9f6c-99aecf57fe91"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG/defaultSecurityRules/AllowVnetInBound'
        etag: 'W/"e9a09d7e-8c00-4ec4-9f6c-99aecf57fe91"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG/defaultSecurityRules/AllowAzureLoadBalancerInBound'
        etag: 'W/"e9a09d7e-8c00-4ec4-9f6c-99aecf57fe91"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG/defaultSecurityRules/DenyAllInBound'
        etag: 'W/"e9a09d7e-8c00-4ec4-9f6c-99aecf57fe91"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG/defaultSecurityRules/AllowVnetOutBound'
        etag: 'W/"e9a09d7e-8c00-4ec4-9f6c-99aecf57fe91"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG/defaultSecurityRules/AllowInternetOutBound'
        etag: 'W/"e9a09d7e-8c00-4ec4-9f6c-99aecf57fe91"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG/defaultSecurityRules/DenyAllOutBound'
        etag: 'W/"e9a09d7e-8c00-4ec4-9f6c-99aecf57fe91"'
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
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/publicApiSub'
      }
    ]
  }
}
