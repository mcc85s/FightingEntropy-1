Class _ADConnection
{
    [Object] $Primary
    [Object] $Secondary
    [Object] $Swap
    [Object] $Target
    [Object] $Credential
    [Object] $Output
    [Object] $Return

    _ADConnection([Object]$DomainController,[Object]$GlobalBrowser)
    {
        $This.Primary                        = $DomainController
        $This.Secondary                      = $GlobalBrowser
        $This.Swap                           = @( )
        
        $This.Target                         = $Null
        $This.Credential                     = $Null

        If ( $This.Primary )
        { 
            $This.Swap += $This.Primary   
        }
        
        If ( $This.Secondary )
        { 
            $This.Swap += $This.Secondary 
        }

        $This.Output                         = @( ) 
        
        ForEach ( $Item in $This.Swap ) 
        {
            If ( $Item.IPAddress -notin $This.Output.IPAddress )
            {
                $This.Output += $Item
            }
        }
    }
}
