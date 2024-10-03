
# Parameters
$resourceGroupName = "kv_RG"
$location = "eastus" 
$sqlServerName = "mySQLRaj"
$adminLogin = "sqlraj123"
$kvResourceGrp = "kv_RG"
$kvName = "test-vault-raj"

# Connect to Azure account (if not already connected)
#Connect-AzAccount

# Set the subscription context (optional if already in the right context)
# Set-AzContext -SubscriptionId <YourSubscriptionId>

# Deploy the Bicep file
 New-AzResourceGroupDeployment -Name "newSqlDeploy" -ResourceGroupName $resourceGroupName `
    -TemplateFile ".\moduleMain.bicep" `
    -sqlServerName $sqlServerName `
    -adminLogin $adminLogin

# Output deployment result
#$deployment

# Deploy the Bicep file
#New-AzResourceGroupDeployment -Name "newSqlDeploy" -ResourceGroupName "new_RG" -TemplateFile "D:\AZDOPS\AZ104\ARM\KeyVaultAccessingTemplate\moduleMain.bicep" -sqlServerName "mySQLRaj" -adminLogin "sqlraj123" -kvResourceGroup "kv_RG" -kvName "test-vault-raj" -location "eastus"

