param sqlServerName string
param adminLogin string
param kvName string = 'test-vault-raj'

resource kv 'Microsoft.KeyVault/vaults@2023-07-01' existing = {
  name: kvName
}

module sql './main.bicep' = {
  name: 'deploySQL'
  params: {
    sqlServerName: sqlServerName
    adminLogin: adminLogin
    adminPassword: kv.getSecret('access-sql-secs')
  }
}


