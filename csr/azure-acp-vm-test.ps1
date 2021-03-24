Write-Host "
      ___  ___
     |   ||   |
     |___||___| Learn On Demand
 ___  ___		Systems
|   ||   |
|___||___|" -ForegroundColor Blue
$azurecred = Get-Credential
Write-Host "Enter the Resource Group Name" -ForegroundColor Black -BackgroundColor Green
$resourceGroup = Read-Host 
$vmTestUser = "Student"
$vmTestPassword = ConvertTo-SecureString -String "Pa55w.rd1234" -AsPlainText -Force
$vmTestCreds = New-Object -TypeName pscredential -ArgumentList $vmTestUser, $vmTestPassword
$size1="Standard_DS1_v2"
$size2="Standard_D2s_v3"
Write-Host "Connecting to Azure..." -ForegroundColor Black -BackgroundColor Green
Connect-AzureRmAccount -Credential $azurecred
Write-Host "Connected." -ForegroundColor Black -BackgroundColor Green

Write-Host "Deploying Test VM 1..." -ForegroundColor Black -BackgroundColor Green
New-AzureRmVM -Name Test -Size $size1 -Credential $vmTestCreds -ResourceGroupName $resourceGroup
Write-Host "Deploying Test VM 2..." -ForegroundColor Black -BackgroundColor Green
New-AzureRmVM -Name Test2 -Size $size2 -Credential $vmTestCreds -ResourceGroupName $resourceGroup
# New-AzureRmVmss -ResourceGroupName $resourceGroup -VMScaleSetName VMSSTest -Credential $vmTestCreds
Write-Host "Script Complete." -ForegroundColor Black -BackgroundColor Green
Read-Host -Prompt "Press Enter to exit"