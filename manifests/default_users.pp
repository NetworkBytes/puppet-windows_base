
class windows_base::default_users {

   user { 'AltirisDeploy':
     ensure  => 'present',
     password  => '<somepassword>',
     groups  => ['Users', 'Administrators'],
   }

   user { 'Administrator':
     ensure  => 'present',
     password  => '<somepassword>',
     groups  => ['Administrators'],
   }

}

