class windows_base {
   include 'windows_base::defaults'

   include 'windows_base::default_users'
   include 'windows_base::disable_uac'
   include 'windows_base::disable_hibernate'
   include 'windows_base::dtc_configuration'
   include 'windows_base::disable_smb_security_signature'
   include 'windows_base::background_info'
   include 'windows_base::packages'
   include 'windows_base::disable_loopback_check'

   #class {'winconfig::uac': ensure => 'disabled'}
   #winconfig::uac {"": ensure => 'disabled'}

   include 'windows_base::disable_loopback_check'


   class {'windows_base::proxy_settings':  proxy_addr => 'proxy.management:3128'}
   include 'windows_base::chocolatey'
}

