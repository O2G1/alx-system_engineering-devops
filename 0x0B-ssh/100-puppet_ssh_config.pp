#Your SSH client configuration must be configured to use the private key ~/.ssh/school
file_line { 'configure to use the private key ~/.ssh/school':
    ensure => 'present',
    path   => '/etc/ssh/ssh_config',
    line   => 'IdentityFile ~/.ssh/school',
}

#Your SSH client configuration must be configured to refuse to authenticate using a password
file_line { 'Refuse to authenticate using a password':
    ensure  => 'present',
    path    => '/etc/ssh/ssh_config',
    replace => true,
    line    => 'PasswordAuthentication no',
    match   => 'PasswordAuthentication yes',
}
