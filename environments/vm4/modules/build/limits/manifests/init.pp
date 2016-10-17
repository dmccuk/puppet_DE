class limits {
  
  file { '/etc/security/limits.conf':
    ensure   => 'file',
    group    => '0',
    mode     => '644',
    owner    => '0',
    content  => template("limits/limits.erb"),
  }
}
