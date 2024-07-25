param managedClusters_mycluster_name string = 'mycluster'
param publicIPAddresses_37001c48_bb18_47bf_8925_ddd297034027_externalid string = '/subscriptions/390416e5-9d2f-4ae8-a102-44d585489504/resourceGroups/MC_MultiSoftware_Enterprise_mycluster_northeurope/providers/Microsoft.Network/publicIPAddresses/37001c48-bb18-47bf-8925-ddd297034027'
param userAssignedIdentities_mycluster_agentpool_externalid string = '/subscriptions/390416e5-9d2f-4ae8-a102-44d585489504/resourceGroups/MC_MultiSoftware_Enterprise_mycluster_northeurope/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mycluster-agentpool'
param privateEndpoints_kube_apiserver_externalid string = '/subscriptions/390416e5-9d2f-4ae8-a102-44d585489504/resourceGroups/MC_MultiSoftware_Enterprise_mycluster_northeurope/providers/Microsoft.Network/privateEndpoints/kube-apiserver'

resource managedClusters_mycluster_name_resource 'Microsoft.ContainerService/managedClusters@2024-03-02-preview' = {
  name: managedClusters_mycluster_name
  location: 'northeurope'
  sku: {
    name: 'Base'
    tier: 'Free'
  }
  kind: 'Base'
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    kubernetesVersion: '1.28.10'
    dnsPrefix: '${managedClusters_mycluster_name}-dns'
    agentPoolProfiles: [
      {
        name: 'agentpool'
        count: 2
        vmSize: 'Standard_DS2_v2'
        osDiskSizeGB: 128
        osDiskType: 'Managed'
        kubeletDiskType: 'OS'
        maxPods: 110
        type: 'VirtualMachineScaleSets'
        maxCount: 5
        minCount: 2
        enableAutoScaling: true
        powerState: {
          code: 'Running'
        }
        orchestratorVersion: '1.28.10'
        enableNodePublicIP: false
        mode: 'System'
        osType: 'Linux'
        osSKU: 'Ubuntu'
        upgradeSettings: {
          maxSurge: '10%'
        }
        enableFIPS: false
        securityProfile: {
          sshAccess: 'LocalUser'
        }
      }
    ]
    windowsProfile: {
      adminUsername: 'azureuser'
      enableCSIProxy: true
    }
    servicePrincipalProfile: {
      clientId: 'msi'
    }
    addonProfiles: {
      azureKeyvaultSecretsProvider: {
        enabled: false
      }
      azurepolicy: {
        enabled: false
      }
    }
    nodeResourceGroup: 'MC_MultiSoftware_Enterprise_${managedClusters_mycluster_name}_northeurope'
    enableRBAC: true
    supportPlan: 'KubernetesOfficial'
    networkProfile: {
      networkPlugin: 'azure'
      networkPluginMode: 'overlay'
      networkPolicy: 'none'
      networkDataplane: 'azure'
      loadBalancerSku: 'Standard'
      loadBalancerProfile: {
        managedOutboundIPs: {
          count: 1
        }
        effectiveOutboundIPs: [
          {
            id: publicIPAddresses_37001c48_bb18_47bf_8925_ddd297034027_externalid
          }
        ]
        backendPoolType: 'nodeIPConfiguration'
      }
      podCidr: '10.244.0.0/16'
      serviceCidr: '10.0.0.0/16'
      dnsServiceIP: '10.0.0.10'
      outboundType: 'loadBalancer'
      podCidrs: [
        '10.244.0.0/16'
      ]
      serviceCidrs: [
        '10.0.0.0/16'
      ]
      ipFamilies: [
        'IPv4'
      ]
    }
    privateLinkResources: [
      {
        id: '${managedClusters_mycluster_name_resource.id}/privateLinkResources/management'
        name: 'management'
        type: 'Microsoft.ContainerService/managedClusters/privateLinkResources'
        groupId: 'management'
        requiredMembers: [
          'management'
        ]
      }
    ]
    apiServerAccessProfile: {
      enablePrivateCluster: true
      privateDNSZone: 'system'
      enablePrivateClusterPublicFQDN: true
    }
    identityProfile: {
      kubeletidentity: {
        resourceId: userAssignedIdentities_mycluster_agentpool_externalid
        clientId: '726b163a-8d6d-42e8-8f5c-d0b7202ba3f9'
        objectId: '223ea3e2-b0f4-4ede-a154-cfde71b9fa29'
      }
    }
    autoScalerProfile: {
      'balance-similar-node-groups': 'false'
      'daemonset-eviction-for-empty-nodes': false
      'daemonset-eviction-for-occupied-nodes': true
      expander: 'random'
      'ignore-daemonsets-utilization': false
      'max-empty-bulk-delete': '10'
      'max-graceful-termination-sec': '600'
      'max-node-provision-time': '15m'
      'max-total-unready-percentage': '45'
      'new-pod-scale-up-delay': '0s'
      'ok-total-unready-count': '3'
      'scale-down-delay-after-add': '10m'
      'scale-down-delay-after-delete': '10s'
      'scale-down-delay-after-failure': '3m'
      'scale-down-unneeded-time': '10m'
      'scale-down-unready-time': '20m'
      'scale-down-utilization-threshold': '0.5'
      'scan-interval': '10s'
      'skip-nodes-with-local-storage': 'false'
      'skip-nodes-with-system-pods': 'true'
    }
    autoUpgradeProfile: {
      upgradeChannel: 'patch'
      nodeOSUpgradeChannel: 'NodeImage'
    }
    disableLocalAccounts: false
    securityProfile: {}
    storageProfile: {
      diskCSIDriver: {
        enabled: true
        version: 'v1'
      }
      fileCSIDriver: {
        enabled: true
      }
      snapshotController: {
        enabled: true
      }
    }
    oidcIssuerProfile: {
      enabled: false
    }
    workloadAutoScalerProfile: {}
    metricsProfile: {
      costAnalysis: {
        enabled: false
      }
    }
    nodeProvisioningProfile: {
      mode: 'Manual'
    }
    bootstrapProfile: {
      artifactSource: 'Direct'
    }
  }
}

resource managedClusters_mycluster_name_agentpool 'Microsoft.ContainerService/managedClusters/agentPools@2024-03-02-preview' = {
  name: '${managedClusters_mycluster_name}/agentpool'
  properties: {
    count: 2
    vmSize: 'Standard_DS2_v2'
    osDiskSizeGB: 128
    osDiskType: 'Managed'
    kubeletDiskType: 'OS'
    maxPods: 110
    type: 'VirtualMachineScaleSets'
    maxCount: 5
    minCount: 2
    enableAutoScaling: true
    powerState: {
      code: 'Running'
    }
    orchestratorVersion: '1.28.10'
    enableNodePublicIP: false
    mode: 'System'
    osType: 'Linux'
    osSKU: 'Ubuntu'
    upgradeSettings: {
      maxSurge: '10%'
    }
    enableFIPS: false
    securityProfile: {
      sshAccess: 'LocalUser'
    }
  }
  dependsOn: [
    managedClusters_mycluster_name_resource
  ]
}

resource managedClusters_mycluster_name_aksManagedAutoUpgradeSchedule 'Microsoft.ContainerService/managedClusters/maintenanceConfigurations@2024-03-02-preview' = {
  name: '${managedClusters_mycluster_name}/aksManagedAutoUpgradeSchedule'
  properties: {
    maintenanceWindow: {
      schedule: {
        weekly: {
          intervalWeeks: 1
          dayOfWeek: 'Sunday'
        }
      }
      durationHours: 4
      utcOffset: '+00:00'
      startDate: '2024-07-26'
      startTime: '00:00'
    }
  }
  dependsOn: [
    managedClusters_mycluster_name_resource
  ]
}

resource managedClusters_mycluster_name_aksManagedNodeOSUpgradeSchedule 'Microsoft.ContainerService/managedClusters/maintenanceConfigurations@2024-03-02-preview' = {
  name: '${managedClusters_mycluster_name}/aksManagedNodeOSUpgradeSchedule'
  properties: {
    maintenanceWindow: {
      schedule: {
        weekly: {
          intervalWeeks: 1
          dayOfWeek: 'Sunday'
        }
      }
      durationHours: 4
      utcOffset: '+00:00'
      startDate: '2024-07-26'
      startTime: '00:00'
    }
  }
  dependsOn: [
    managedClusters_mycluster_name_resource
  ]
}

resource managedClusters_mycluster_name_kube_apiserver_a700139b_5644_4b9d_be54_6c5abc781130 'Microsoft.ContainerService/managedClusters/privateEndpointConnections@2024-03-02-preview' = {
  name: '${managedClusters_mycluster_name}/kube-apiserver.a700139b-5644-4b9d-be54-6c5abc781130'
  properties: {
    privateEndpoint: {
      id: privateEndpoints_kube_apiserver_externalid
    }
    privateLinkServiceConnectionState: {
      status: 'Approved'
      description: 'Auto Approved'
    }
  }
  dependsOn: [
    managedClusters_mycluster_name_resource
  ]
}
