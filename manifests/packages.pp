class windows_base::packages {

   include 'install_packages'

   $pkgs = 
     [
        'baretail',
        'notepadplusplus',
        'winscp',
        '7zip',
        'PowerShell',
        'git',
        'GoogleChrome',
        'Firefox',
        'vcredist2010',
        'sysinternals',
        'putty',
        'windirstat',
        'grepwin',
#       'powershell4',
        'ilspy',
        'windbg',
        'logparser',
        'logparser.lizardgui',
        'gpg4win',
#       'bginfo',
        'NSClientPlusPlus.x64',
        'networkmonitor',
        #'puppet',
     ]

   package { $pkgs:
      ensure          => installed,
      provider        => 'chocolatey',
      #install_options => ['-pre','-params','-mypkgparam'],
      #source          => 'https://myfeed.example.com/api/v2',
   }


}
