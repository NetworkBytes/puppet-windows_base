class windows_base::defaults {

  Registry_value {
      ensure => present,
      type   => string,
   }

  Exec {
      path => 'C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Program Files (x86)\Puppet Labs\Puppet Enterprise\bin;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\WindowsPowerShell\v1.0\;',
      logoutput=> true,
   }
}

