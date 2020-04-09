# Install nginx and set a custom header

exec { 'update':
      command  =>'sudo apt-get update',
      provider =>shell,
}

package { 'nginx':
      ensure  =>installed,
      require =>Exec['update'],
}

file_line { 'customheader':
      ensure  =>present,
      path    =>'/etc/nginx/sites-available/default',
      after   =>':80 default_server;',
      line    =>"add_header X-Served-By ${hostname};",
      require =>Package['nginx'],
}

service { 'nginx_service':
      ensure  =>running,
      name    =>'nginx',
      require =>File_line['customheader'],
}