Class _Inventory
{
    [Object]           $UID
    [UInt32]         $Index
    [Object]          $Slot
    [Object]          $Type
    [Object]          $Date
    [Object]          $Time
    [UInt32]          $Rank

    [String]        $Vendor
    [String]        $Serial
    [String]         $Model
    [Object]         $Title  
    [Object]          $Cost

    _Inventory([Object]$UID) 
    {
        $This.UID  = $UID.UID
        $This.Slot = 4
        $This.Type = $UID.Type
        $This.Date = $UID.Date
        $This.Time = $UID.Time
    }
}
