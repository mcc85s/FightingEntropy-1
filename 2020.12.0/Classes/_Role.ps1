Class _Role
{
    [String] $Name
    [Object] $Role

    _Role([String]$Name)
    {
        $This.Name = $Name
        $This.Role = Switch($Name)
        {
            Win32_Client { [_Win32_Client]::New() } Win32_Server { [_Win32_Server]::New() } 
            UnixBSD      { [_UnixBSD]::New()      } RHELCentOS   { [_RHELCentOS]::New()   }
        }
    }
}
