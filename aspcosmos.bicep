param serverfarms_ASP_meetingroomreservation_b2d2_name string = 'ASP-meetingroomreservation-b2d2'

resource serverfarms_ASP_meetingroomreservation_b2d2_name_resource 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: serverfarms_ASP_meetingroomreservation_b2d2_name
  location: 'North Europe'
  tags: {
    Billing: 'Internal'
  }
  sku: {
    name: 'B1'
    tier: 'Basic'
    capacity: 1
  }
  kind: 'linux'
  properties: {
    perSiteScaling: false
    elasticScaleEnabled: false
  }
}
