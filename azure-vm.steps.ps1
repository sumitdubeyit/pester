Given "the deployment is successful" {}
Then "the RG name should be SQL" {
Get-AzResourceGroup |?{$_.ResourceGroupName -eq "SQL"}|select ResourceGroupName -ExpandProperty ResourceGroupName |Should -Be "SQL" 

}
And "RG Location is East US" {
    (Get-AzResourceGroup |?{$_.Location -eq "EastUS"}).Location | should -Be "eastus"
}

Given "RG is Created"{}
Then "RG name should be VM" {
    Get-AzResourceGroup |?{$_.ResourceGroupName -eq "VM"}|select ResourceGroupName -ExpandProperty ResourceGroupName |Should -Be "VM" 
}
And "RG Location is West US" {
    (Get-AzResourceGroup |?{$_.Location -eq "WestUS"}).Location | should -Be "Westus1"
}
