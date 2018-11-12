file { "/tmp/puppettestfile":
    ensure => file,
    owner  => root,
    group  => root,
    mode   => '0777',
    tag  => ['sample_file'],
}
