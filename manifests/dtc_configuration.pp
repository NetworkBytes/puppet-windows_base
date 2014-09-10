class windows_base::dtc_configuration {

   $regbase   = 'HKLM\SOFTWARE\Microsoft\MSDTC'

   registry_value { "$regbase\\AllowOnlySecureRpcCalls":  type => dword, data => "0"}
   registry_value { "$regbase\\TurnOffRpcSecurity":  type => dword, data => "1"}


   registry_value { "$regbase\\Security\\NetworkDtcAccess":  type => dword, data => "1"}
   registry_value { "$regbase\\Security\\NetworkDtcAccessAdmin":  type => dword, data => "1"}
   registry_value { "$regbase\\Security\\NetworkDtcAccessClients":  type => dword, data => "1"}
   registry_value { "$regbase\\Security\\NetworkDtcAccessInbound":  type => dword, data => "1"}
   registry_value { "$regbase\\Security\\NetworkDtcAccessOutbound":  type => dword, data => "1"}
   registry_value { "$regbase\\Security\\NetworkDtcAccessTransactions":  type => dword, data => "1"}
   registry_value { "$regbase\\Security\\XaTransactions":  type => dword, data => "1"}
}



