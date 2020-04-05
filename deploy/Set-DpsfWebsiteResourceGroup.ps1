# Run 'Connect-AzAccount' to authenticate before running this script.

$resourceGroupName = 'DpsfWebsite'
$location = 'eastus2'

[string] $THIS_SCRIPTS_DIRECTORY_PATH = $PSScriptRoot
[string] $sharedResourcesArmTemplateFilePath = Join-Path -Path $THIS_SCRIPTS_DIRECTORY_PATH -ChildPath 'DpsfWebsite-ResourceGroup\template.json'

New-AzResourceGroup -Name $resourceGroupName -Location $location -Verbose
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $sharedResourcesArmTemplateFilePath -Mode Incremental -Verbose
