@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet')
resource AppVnet 'Microsoft.Network/virtualNetworks@2024-01-01' = {
  name: 'AppVnet'
  etag: 'W/"a1c2908f-9a19-46cc-a19f-484edf13baba"'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: '7f10d7cc-7c89-4a41-98f7-d13ce2dca02a'
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
      ipamPoolPrefixAllocations: []
    }
    encryption: {
      enabled: true
      enforcement: 'AllowUnencrypted'
    }
    subnets: [
      {
        name: 'webappSub'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/webappSub'
        etag: 'W/"a1c2908f-9a19-46cc-a19f-484edf13baba"'
        properties: {
          provisioningState: 'Succeeded'
          addressPrefixes: [
            '10.0.0.0/24'
          ]
          ipamPoolPrefixAllocations: []
          networkSecurityGroup: {
            id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG'
          }
          delegations: []
          privateEndpointNetworkPolicies: 'NetworkSecurityGroupEnabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'publicApiSub'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/publicApiSub'
        etag: 'W/"a1c2908f-9a19-46cc-a19f-484edf13baba"'
        properties: {
          provisioningState: 'Succeeded'
          addressPrefixes: [
            '10.0.1.0/24'
          ]
          ipamPoolPrefixAllocations: []
          networkSecurityGroup: {
            id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG'
          }
          delegations: []
          privateEndpointNetworkPolicies: 'NetworkSecurityGroupEnabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'blobSub'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/blobSub'
        etag: 'W/"a1c2908f-9a19-46cc-a19f-484edf13baba"'
        properties: {
          provisioningState: 'Succeeded'
          addressPrefixes: [
            '10.0.2.0/24'
          ]
          ipamPoolPrefixAllocations: []
          networkSecurityGroup: {
            id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG'
          }
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
    ]
    virtualNetworkPeerings: []
    enableDdosProtection: true
    ddosProtectionPlan: {
      id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/ddosProtectionPlans/DDosPlan'
    }
  }
}
@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/ddosProtectionPlans/DDosPlan')
resource DDosPlan 'Microsoft.Network/ddosProtectionPlans@2024-01-01' = {
  name: 'DDosPlan'
  etag: 'W/"8c436702-a0bc-48b5-bd77-b51dc18da7bd"'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    virtualNetworks: [
      {
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet'
      }
    ]
  }
}
@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG')
resource webAppNSG 'Microsoft.Network/networkSecurityGroups@2024-01-01' = {
  name: 'webAppNSG'
  etag: 'W/"1548b61d-87a7-4f13-85f6-8fb3e82113d3"'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: 'da2a669a-e16f-4dba-8ad4-514c06bd43f5'
    securityRules: []
    defaultSecurityRules: [
      {
        name: 'AllowVnetInBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/webAppNSG/defaultSecurityRules/AllowVnetInBound'
        etag: 'W/"1548b61d-87a7-4f13-85f6-8fb3e82113d3"'
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
        etag: 'W/"1548b61d-87a7-4f13-85f6-8fb3e82113d3"'
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
        etag: 'W/"1548b61d-87a7-4f13-85f6-8fb3e82113d3"'
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
        etag: 'W/"1548b61d-87a7-4f13-85f6-8fb3e82113d3"'
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
        etag: 'W/"1548b61d-87a7-4f13-85f6-8fb3e82113d3"'
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
        etag: 'W/"1548b61d-87a7-4f13-85f6-8fb3e82113d3"'
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
@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG')
resource publicApiNSG 'Microsoft.Network/networkSecurityGroups@2024-01-01' = {
  name: 'publicApiNSG'
  etag: 'W/"f8fbb3cd-6cde-4848-a366-806455a69538"'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: '0a1b5ca5-fb0a-49f1-a42d-3c811650646b'
    securityRules: []
    defaultSecurityRules: [
      {
        name: 'AllowVnetInBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/publicApiNSG/defaultSecurityRules/AllowVnetInBound'
        etag: 'W/"f8fbb3cd-6cde-4848-a366-806455a69538"'
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
        etag: 'W/"f8fbb3cd-6cde-4848-a366-806455a69538"'
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
        etag: 'W/"f8fbb3cd-6cde-4848-a366-806455a69538"'
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
        etag: 'W/"f8fbb3cd-6cde-4848-a366-806455a69538"'
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
        etag: 'W/"f8fbb3cd-6cde-4848-a366-806455a69538"'
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
        etag: 'W/"f8fbb3cd-6cde-4848-a366-806455a69538"'
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

@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG')
resource blobNSG 'Microsoft.Network/networkSecurityGroups@2024-01-01' = {
  name: 'blobNSG'
  etag: 'W/"0f22baad-325f-4b10-96f3-721539e2762f"'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: '1e60e82e-2798-446b-868b-2fecb72d916c'
    securityRules: []
    defaultSecurityRules: [
      {
        name: 'AllowVnetInBound'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkSecurityGroups/blobNSG/defaultSecurityRules/AllowVnetInBound'
        etag: 'W/"0f22baad-325f-4b10-96f3-721539e2762f"'
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
        etag: 'W/"0f22baad-325f-4b10-96f3-721539e2762f"'
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
        etag: 'W/"0f22baad-325f-4b10-96f3-721539e2762f"'
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
        etag: 'W/"0f22baad-325f-4b10-96f3-721539e2762f"'
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
        etag: 'W/"0f22baad-325f-4b10-96f3-721539e2762f"'
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
        etag: 'W/"0f22baad-325f-4b10-96f3-721539e2762f"'
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
