param sites_meetingroomreservation_name string = 'meetingroomreservation'
param serverfarms_ASP_meetingroomreservation_b2d2_externalid string = '/subscriptions/1d971a63-d3f3-49f3-8682-09958f6338ef/resourceGroups/meetingroomreservation/providers/Microsoft.Web/serverfarms/ASP-meetingroomreservation-b2d2'

resource sites_meetingroomreservation_name_resource 'Microsoft.Web/sites@2023-12-01' = {
  name: sites_meetingroomreservation_name
  location: 'North Europe'
  tags: {
    Billing: 'Internal'
  }
  kind: 'app,linux'
  properties: {
    enabled: true
    hostNameSslStates: [
      {
        name: '${sites_meetingroomreservation_name}.northeurope.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Standard'
      }
      {
        name: '${sites_meetingroomreservation_name}.scm.northeurope.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Repository'
      }
    ]
    serverFarmId: serverfarms_ASP_meetingroomreservation_b2d2_externalid
    reserved: true
    isXenon: false
    hyperV: false
    siteConfig: {
      numberOfWorkers: 1
      linuxFxVersion: 'DOTNETCORE|8.0'
      acrUseManagedIdentityCreds: false
      alwaysOn: false
      http20Enabled: false
      functionAppScaleLimit: 0
      minimumElasticInstanceCount: 0
      vnetRouteAllEnabled: true
      virtualApplications: [
        {
          virtualPath: '/'
          physicalPath: 'site\\wwwroot'
          preloadEnabled: false
        }
      ]
      defaultDocuments: [
        'Default.htm'
        'Default.html'
        'Default.asp'
        'index.htm'
        'index.html'
        'iisstart.htm'
        'default.aspx'
        'index.php'
        'hostingstart.html'
      ]
      netFrameworkVersion: 'v4.0'
      requestTracingEnabled: false
      remoteDebuggingEnabled: false
      httpLoggingEnabled: false
      logsDirectorySizeLimit: 35
      detailedErrorLoggingEnabled: false
      scmType: 'None'
      use32BitWorkerProcess: true
      webSocketsEnabled: false
      managedPipelineMode: 'Integrated'
      loadBalancing: 'LeastRequests'
      autoHealEnabled: false
      ipSecurityRestrictions: [
        {
          ipAddress: 'Any'
          action: 'Allow'
          priority: 2147483647
          name: 'Allow all'
          description: 'Allow all access'
        }
      ]
      scmIpSecurityRestrictions: [
        {
          ipAddress: 'Any'
          action: 'Allow'
          priority: 2147483647
          name: 'Allow all'
          description: 'Allow all access'
        }
      ]
      scmIpSecurityRestrictionsUseMain: false
      minTlsVersion: '1.2'
      ftpsState: 'FtpsOnly'
      preWarmedInstanceCount: 0
      elasticWebAppScaleLimit: 0
      functionsRuntimeScaleMonitoringEnabled: false
    }
    httpsOnly: true
    redundancyMode: 'None'
    publicNetworkAccess: 'Disabled'
    storageAccountRequired: false
    virtualNetworkSubnetId: resourceId('Microsoft.Network/virtualNetworks/subnets', 'cosmosvnet', 'subnet-gvmhbgig')
  }
}

resource sites_meetingroomreservation_name_ftp 'Microsoft.Web/sites/publishingCredentialsPolicies@2023-12-01' = {
  parent: sites_meetingroomreservation_name_resource
  name: 'ftp'
  properties: {
    allow: true
  }
}

resource sites_meetingroomreservation_name_scm 'Microsoft.Web/sites/publishingCredentialsPolicies@2023-12-01' = {
  parent: sites_meetingroomreservation_name_resource
  name: 'scm'
  properties: {
    allow: true
  }
}

resource sites_meetingroomreservation_name_web 'Microsoft.Web/sites/config@2023-12-01' = {
  parent: sites_meetingroomreservation_name_resource
  name: 'web'
  properties: {
    numberOfWorkers: 1
    defaultDocuments: [
      'Default.htm'
      'Default.html'
      'Default.asp'
      'index.htm'
      'index.html'
      'iisstart.htm'
      'default.aspx'
      'index.php'
      'hostingstart.html'
    ]
    netFrameworkVersion: 'v4.0'
    linuxFxVersion: 'DOTNETCORE|8.0'
    requestTracingEnabled: false
    remoteDebuggingEnabled: false
    httpLoggingEnabled: false
    logsDirectorySizeLimit: 35
    detailedErrorLoggingEnabled: false
    publishingUsername: '$meetingroomreservation'
    scmType: 'None'
    use32BitWorkerProcess: true
    webSocketsEnabled: false
    managedPipelineMode: 'Integrated'
    virtualApplications: [
      {
        virtualPath: '/'
        physicalPath: 'site\\wwwroot'
        preloadEnabled: false
      }
    ]
    loadBalancing: 'LeastRequests'
    experiments: {
      rampUpRules: []
    }
    autoHealEnabled: false
    vnetRouteAllEnabled: true
    vnetPrivatePortsCount: 0
    publicNetworkAccess: 'Disabled'
    localMySqlEnabled: false
    ipSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictionsUseMain: false
    minTlsVersion: '1.2'
    scmMinTlsVersion: '1.2'
    ftpsState: 'FtpsOnly'
    preWarmedInstanceCount: 0
    elasticWebAppScaleLimit: 0
    functionsRuntimeScaleMonitoringEnabled: false
  }
}

resource sites_meetingroomreservation_name_sites_meetingroomreservation_name_h3edfddccye6hnf4_northeurope_01_azurewebsites_net 'Microsoft.Web/sites/hostNameBindings@2023-12-01' = {
  parent: sites_meetingroomreservation_name_resource
  name: '${sites_meetingroomreservation_name}-northeurope-01.azurewebsites.net'
  properties: {
    siteName: sites_meetingroomreservation_name
    hostNameType: 'Verified'
  }
}
