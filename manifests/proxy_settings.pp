class windows_base::proxy_settings
(
   $proxy_addr   = 'proxy:3128',
   $proxy_bypass = '<local>;*.management'
)
{

   $regbase   = 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings'

   registry_value { "$regbase\\ProxyEnable":  type => dword, data => "1"}
   registry_value { "$regbase\\ProxyServer":   data => "$proxy_addr"}
   registry_value { "$regbase\\ProxyOverride": data => "$proxy_bypass"}

   registry_value { "32:$regbase\\ProxyEnable": type => dword, data => "1"}
   registry_value { "32:$regbase\\ProxyServer":  data => "$proxy_addr"}
   registry_value { "32:$regbase\\ProxyOverride": data => "$proxy_bypass"}

   $policy = "HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\ProxySettingsPerUser"
   registry_value { "$policy": type => dword, data => "0"}
   registry_value { "32:$policy": type => dword, data => "0"}
 
}



