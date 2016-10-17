class hosts {
  
  file { '/etc/hosts':
    ensure   => 'file',
    group    => '0',
    mode     => '644',
    owner    => '0',
    content  => template("hosts/hosts.erb"),
  }
}
