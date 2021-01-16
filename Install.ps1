Function Install-FEModule
{
    [CmdLetBinding()]Param([Parameter(Mandatory)][String]$Version)

    ForEach ( $Item in "OS Manifest RestObject Hive Install" -Split " " )
    {
        Invoke-Expression ( Invoke-RestMethod "https://raw.githubusercontent.com/mcc85sx/FightingEntropy/master/$Version/Classes/_$Item.ps1" )
    }
    
    [_Install]::New($Version)
}

Install-FEModule -Version 2021.1.1
