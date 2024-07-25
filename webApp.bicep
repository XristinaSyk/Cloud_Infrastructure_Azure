@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Web/sites/multisoftwareWebApp')
resource multisoftwareWebApp 'Microsoft.Web/sites@2023-12-01' = {
  name: 'multisoftwareWebApp'
  kind: 'app,linux'
  location: 'North Europe'
  tags: {
    billing: 'public'
  }
  properties: {
    name: 'multisoftwareWebApp'
    state: 'Running'
    hostNames: [
      'multisoftwarewebapp.azurewebsites.net'
    ]
    webSpace: 'team-NorthEuropewebspace-Linux'
    selfLink: 'https://waws-prod-db3-317.api.azurewebsites.windows.net:454/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/webspaces/team-NorthEuropewebspace-Linux/sites/multisoftwareWebApp'
    repositorySiteName: 'multisoftwareWebApp'
    owner: null
    usageState: 'Normal'
    enabled: true
    adminEnabled: true
    afdEnabled: false
    enabledHostNames: [
      'multisoftwarewebapp.azurewebsites.net'
      'multisoftwarewebapp.scm.azurewebsites.net'
    ]
    siteProperties: {
      metadata: null
      properties: [
        {
          name: 'LinuxFxVersion'
          value: 'DOTNETCORE|8.0'
        }
        {
          name: 'WindowsFxVersion'
          value: null
        }
      ]
      appSettings: null
    }
    availabilityState: 'Normal'
    sslCertificates: null
    csrs: []
    cers: null
    siteMode: null
    hostNameSslStates: [
      {
        name: 'multisoftwarewebapp.azurewebsites.net'
        sslState: 'Disabled'
        ipBasedSslResult: null
        virtualIP: null
        virtualIPv6: null
        thumbprint: null
        certificateResourceId: null
        toUpdate: null
        toUpdateIpBasedSsl: null
        ipBasedSslState: 'NotConfigured'
        hostType: 'Standard'
      }
      {
        name: 'multisoftwarewebapp.scm.azurewebsites.net'
        sslState: 'Disabled'
        ipBasedSslResult: null
        virtualIP: null
        virtualIPv6: null
        thumbprint: null
        certificateResourceId: null
        toUpdate: null
        toUpdateIpBasedSsl: null
        ipBasedSslState: 'NotConfigured'
        hostType: 'Repository'
      }
    ]
    computeMode: null
    serverFarm: null
    serverFarmId: WebPlan.id
    reserved: true
    isXenon: false
    hyperV: false
    lastModifiedTimeUtc: '2024-07-23T20:27:15.6966667'
    storageRecoveryDefaultState: 'Running'
    contentAvailabilityState: 'Normal'
    runtimeAvailabilityState: 'Normal'
    dnsConfiguration: {}
    vnetRouteAllEnabled: true
    containerAllocationSubnet: null
    useContainerLocalhostBindings: null
    vnetImagePullEnabled: false
    vnetContentShareEnabled: false
    siteConfig: {
      numberOfWorkers: 1
      defaultDocuments: null
      netFrameworkVersion: null
      phpVersion: null
      pythonVersion: null
      nodeVersion: null
      powerShellVersion: null
      linuxFxVersion: 'DOTNETCORE|8.0'
      windowsFxVersion: null
      windowsConfiguredStacks: null
      requestTracingEnabled: null
      remoteDebuggingEnabled: null
      remoteDebuggingVersion: null
      httpLoggingEnabled: null
      azureMonitorLogCategories: null
      acrUseManagedIdentityCreds: false
      acrUserManagedIdentityID: null
      logsDirectorySizeLimit: null
      detailedErrorLoggingEnabled: null
      publishingUsername: null
      publishingPassword: null
      appSettings: null
      metadata: null
      connectionStrings: null
      machineKey: null
      handlerMappings: null
      documentRoot: null
      scmType: null
      use32BitWorkerProcess: null
      webSocketsEnabled: null
      alwaysOn: true
      javaVersion: null
      javaContainer: null
      javaContainerVersion: null
      appCommandLine: null
      managedPipelineMode: null
      virtualApplications: null
      winAuthAdminState: null
      winAuthTenantState: null
      customAppPoolIdentityAdminState: null
      customAppPoolIdentityTenantState: null
      runtimeADUser: null
      runtimeADUserPassword: null
      loadBalancing: null
      routingRules: null
      experiments: null
      limits: null
      autoHealEnabled: null
      autoHealRules: null
      tracingOptions: null
      vnetName: null
      vnetRouteAllEnabled: null
      vnetPrivatePortsCount: null
      publicNetworkAccess: null
      cors: null
      push: null
      apiDefinition: null
      apiManagementConfig: null
      autoSwapSlotName: null
      localMySqlEnabled: null
      managedServiceIdentityId: null
      xManagedServiceIdentityId: null
      keyVaultReferenceIdentity: null
      ipSecurityRestrictions: null
      ipSecurityRestrictionsDefaultAction: null
      scmIpSecurityRestrictions: null
      scmIpSecurityRestrictionsDefaultAction: null
      scmIpSecurityRestrictionsUseMain: null
      http20Enabled: false
      minTlsVersion: null
      minTlsCipherSuite: null
      supportedTlsCipherSuites: null
      scmMinTlsVersion: null
      ftpsState: null
      preWarmedInstanceCount: null
      functionAppScaleLimit: 0
      elasticWebAppScaleLimit: null
      healthCheckPath: null
      fileChangeAuditEnabled: null
      functionsRuntimeScaleMonitoringEnabled: null
      websiteTimeZone: null
      minimumElasticInstanceCount: 0
      azureStorageAccounts: null
      http20ProxyFlag: null
      sitePort: null
      antivirusScanEnabled: null
      storageType: null
      sitePrivateLinkHostEnabled: null
      clusteringEnabled: false
    }
    functionAppConfig: null
    daprConfig: null
    deploymentId: 'multisoftwareWebApp'
    slotName: null
    trafficManagerHostNames: null
    sku: 'Premium0V3'
    scmSiteAlsoStopped: false
    targetSwapSlot: null
    hostingEnvironment: null
    hostingEnvironmentProfile: null
    clientAffinityEnabled: false
    clientCertEnabled: false
    clientCertMode: 'Required'
    clientCertExclusionPaths: null
    hostNamesDisabled: false
    ipMode: 'IPv4'
    vnetBackupRestoreEnabled: false
    domainVerificationIdentifiers: null
    customDomainVerificationId: 'D7ED79349E39AF810A2260318AF0CCC96A7D33FC3CEB2C6956946363AA43DE62'
    kind: 'app,linux'
    managedEnvironmentId: null
    workloadProfileName: null
    resourceConfig: null
    inboundIpAddress: '20.107.224.56'
    possibleInboundIpAddresses: '20.107.224.56'
    ftpUsername: 'multisoftwareWebApp\\$multisoftwareWebApp'
    ftpsHostName: 'ftps://waws-prod-db3-317.ftp.azurewebsites.windows.net/site/wwwroot'
    outboundIpAddresses: '51.104.140.175,51.104.140.188,51.104.140.190,51.104.140.224,51.104.141.15,51.104.141.31,20.107.224.56'
    possibleOutboundIpAddresses: '51.104.141.44,51.104.141.46,51.104.141.84,51.104.141.89,51.104.141.131,51.104.141.133,51.104.139.136,51.104.139.141,51.104.139.142,51.104.139.164,51.104.139.224,51.104.140.53,51.104.140.64,51.104.140.116,51.104.140.141,51.104.140.144,51.104.140.149,51.104.140.167,51.104.140.175,51.104.140.188,51.104.140.190,51.104.140.224,51.104.141.15,51.104.141.31,51.104.141.44,51.104.141.46,51.104.141.84,51.104.141.89,51.104.141.131,51.104.141.133,51.104.141.142,51.104.141.144,51.104.141.150,51.104.141.166,51.104.141.171,51.104.141.175,20.107.224.56'
    containerSize: 0
    dailyMemoryTimeQuota: 0
    suspendedTill: null
    siteDisabledReason: 0
    functionExecutionUnitsCache: null
    maxNumberOfWorkers: null
    homeStamp: 'waws-prod-db3-317'
    cloningInfo: null
    hostingEnvironmentId: null
    tags: {
      billing: 'public'
    }
    resourceGroup: 'team'
    defaultHostName: 'multisoftwarewebapp.azurewebsites.net'
    slotSwapStatus: null
    httpsOnly: true
    endToEndEncryptionEnabled: false
    functionsRuntimeAdminIsolationEnabled: false
    redundancyMode: 'None'
    inProgressOperationId: null
    geoDistributions: null
    privateEndpointConnections: []
    publicNetworkAccess: 'Enabled'
    buildVersion: null
    targetBuildVersion: null
    migrationState: null
    eligibleLogCategories: 'AppServiceAppLogs,AppServiceAuditLogs,AppServiceConsoleLogs,AppServiceHTTPLogs,AppServiceIPSecAuditLogs,AppServicePlatformLogs,ScanLogs,AppServiceFileAuditLogs,AppServiceAntivirusScanAuditLogs,AppServiceAuthenticationLogs'
    inFlightFeatures: [
      'SiteContainers'
    ]
    storageAccountRequired: false
    virtualNetworkSubnetId: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/webappSub'
    keyVaultReferenceIdentity: 'SystemAssigned'
    autoGeneratedDomainNameLabelScope: null
    defaultHostNameScope: 'Global'
    privateLinkIdentifiers: null
    sshEnabled: null
  }
}
@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/microsoft.insights/components/webAppInsights')
resource webAppInsights 'Microsoft.Insights/components@2020-02-02' = {
  kind: 'web'
  etag: '"6a0202e5-0000-0200-0000-66a011d90000"'
  name: 'webAppInsights'
  location: 'northeurope'
  tags: {
    billing: 'public'
  }
  properties: {
    ApplicationId: 'webAppInsights'
    AppId: '46ef221f-a6f6-468a-aaf9-0c165313dda0'
    Application_Type: 'web'
    Flow_Type: 'Redfield'
    Request_Source: 'IbizaWebAppExtensionCreate'
    InstrumentationKey: '24836ea5-eb57-4d5a-8f79-529566d78d42'
    ConnectionString: 'InstrumentationKey=24836ea5-eb57-4d5a-8f79-529566d78d42;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/;ApplicationId=46ef221f-a6f6-468a-aaf9-0c165313dda0'
    Name: 'webAppInsights'
    CreationDate: '2024-07-23T20:26:00.7007142+00:00'
    TenantId: '049b8fe2-38c8-4859-8e37-50ca2d887b89'
    provisioningState: 'Succeeded'
    SamplingPercentage: null
    RetentionInDays: 90
    WorkspaceResourceId: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-049b8fe2-38c8-4859-8e37-50ca2d887b89-NEU'
    IngestionMode: 'LogAnalytics'
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
    Ver: 'v2'
  }
}
@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Web/serverfarms/WebPlan')
resource WebPlan 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: 'WebPlan'
  kind: 'linux'
  location: 'North Europe'
  tags: {
    billing: 'public'
  }
  properties: {
    serverFarmId: 13227
    name: 'WebPlan'
    workerSize: 'XSmallV3'
    workerSizeId: 18
    workerTierName: null
    numberOfWorkers: 1
    currentWorkerSize: 'XSmallV3'
    currentWorkerSizeId: 18
    currentNumberOfWorkers: 1
    status: 'Ready'
    webSpace: 'team-NorthEuropewebspace-Linux'
    subscription: '049b8fe2-38c8-4859-8e37-50ca2d887b89'
    adminSiteName: null
    hostingEnvironment: null
    hostingEnvironmentProfile: null
    maximumNumberOfWorkers: 30
    planName: 'VirtualDedicatedPlan'
    adminRuntimeSiteName: null
    computeMode: 'Dedicated'
    siteMode: null
    geoRegion: 'North Europe'
    perSiteScaling: false
    elasticScaleEnabled: false
    maximumElasticWorkerCount: 1
    numberOfSites: 1
    hostingEnvironmentId: null
    isSpot: false
    spotExpirationTime: null
    freeOfferExpirationTime: null
    tags: {
      billing: 'public'
    }
    kind: 'linux'
    resourceGroup: 'team'
    reserved: true
    isXenon: false
    hyperV: false
    mdmId: 'waws-prod-db3-317_13227'
    targetWorkerCount: 0
    targetWorkerSizeId: 0
    provisioningState: 'Succeeded'
    webSiteId: null
    existingServerFarmIds: null
    kubeEnvironmentProfile: null
    zoneRedundant: false
    migrateToVMSS: null
    vnetConnectionsUsed: 1
    vnetConnectionsMax: 2
    createdTime: '2024-07-23T20:26:02.5133333'
  }
  sku: {
    name: 'P0v3'
    tier: 'Premium0V3'
    size: 'P0v3'
    family: 'Pv3'
    capacity: 1
  }
}
