class windows_base::background_info
{
   $dir     = 'C:\Program Files\BgInfo'  
   $regbase = 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run'


   registry_value { "$regbase\\BGInfo": data => "$dir\BGinfo.vbs"}


   File {
      source_permissions => ignore,
   }

   file {"$dir":
      ensure  => directory,
      source  => "puppet:///modules/$module_name/bginfo",
      recurse => true,
   }
   

   $files   = ["$dir\\Bginfo.exe", "$dir\\Bginfo.vbs"]
   file { $files:
      #ensure => 'file',
      ensure => 'present',
      mode   => '0755',
      require => File["$dir"],
    }
}

