Get-AzResourceGroup |?{$_.ResourceGroupName -eq "SQL"}|select ResourceGroupName -ExpandProperty ResourceGroupName
