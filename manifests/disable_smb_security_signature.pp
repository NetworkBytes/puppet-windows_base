class windows_base::disable_smb_security_signature {
   $regbase   = 'HKLM\System\CurrentControlSet\Services\LanmanWorkstation\Parameters'
   registry_value { "$regbase\\RequireSecuritySignature":  type => dword, data => "0"}
}



