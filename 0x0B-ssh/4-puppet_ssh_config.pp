file_line { 'Set identify file':
    ensure =>'present',
    path   =>'/etc/ssh/ssh_config',
    line   =>'    IdentityFile ~/.ssh/holberton',
}
file_line { 'Set password authentication':
    ensure =>'present',
    path   =>'/etc/ssh/ssh_config',
    line   =>'    PasswordAuthentication no',
    match  =>'PasswordAuthentication yes',
}
