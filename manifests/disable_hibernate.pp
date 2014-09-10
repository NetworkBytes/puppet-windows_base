class windows_base::disable_hibernate {


   $regbase   = 'HKLM\SYSTEM\CurrentControlSet\Control\Power'
   registry_value { "$regbase\\HiberFileSizePercent":  type => dword, data => "0"}
   registry_value { "$regbase\\HibernateEnabled":  type => dword, data => "0"}

   reboot { 'after_hibernate_disabled':
      subscribe  => [ Registry_value["$regbase\\HiberFileSizePercent"],
                      Registry_value["$regbase\\HibernateEnabled"] 
                    ],
   }
}



