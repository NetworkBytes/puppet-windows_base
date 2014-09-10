class windows_base::disable_loopback_check
{
   $regbase   = 'HKLM\System\CurrentControlSet\Control\Lsa'
   registry_value { "$regbase\\DisableLoopbackCheck": type => dword, data => "1"}
}

