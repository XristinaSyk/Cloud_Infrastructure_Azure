param userName string = 'John Doe'
param userPassword string = 'P@ssword1234'
param userPrincipalName string = 'johndoe@yourtenant.onmicrosoft.com'
param userDisplayName string = userName
param userMailNickname string = 'johndoe'

resource newUser 'Microsoft.AzureAD/b2cUsers@2020-07-01' = {
  name: userPrincipalName
  properties: {
    displayName: userDisplayName
    mailNickname: userMailNickname
    passwordProfile: {
      password: userPassword
      forceChangePasswordNextSignIn: true
    }
    userPrincipalName: userPrincipalName
    accountEnabled: true
  }
}

output userId string = newUser.properties.objectId
