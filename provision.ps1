param (
    # How to create a token here: https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/
    [string]$githubToken,
    [string]$resourceGroup,
    [string]$storageName,
    [string]$functionName
)

# (Add)
az account set -s 16d58f7f-b230-45a2-831e-954f9e3e4ce9

# Creates a Resource group to hold our application
#az group create -l japaneast -n $resourceGroup

# Storage account where Azure Functions will keep its data and logs
#az storage account create --sku Standard_LRS --location japaneast --kind Storage -g $resourceGroup -n $storageName.ToLower()

# Creates our Function Application
az functionapp create -n $functionName -g $resourceGroup -s $storageName.ToLower() -c japaneast --functions-version 4

# Configures Functions Application Settings
#az functionapp config appsettings set -g $resourceGroup -n $functionName --settings GitHubToken=$githubToken

#.\provision.ps1 -githubToken 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 -resourceGroup n1948resourcegroup0124 -storageName n1948strage0124 -functionName n1948func0124