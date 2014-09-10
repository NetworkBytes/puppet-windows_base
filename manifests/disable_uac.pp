class windows_base::disable_uac {

   $regbase   = 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'
   registry_value { "$regbase\\EnableLUA":  type => dword, data => "0"}

   reboot { 'after_uac_disabled':
      subscribe  => Registry_value["$regbase\\EnableLUA"],
   }
}



