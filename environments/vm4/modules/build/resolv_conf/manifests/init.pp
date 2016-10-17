class resolv_conf {
  
  file { '/etc/resolv.conf':
    ensure   => 'file',
    group    => '0',
    mode     => '644',
    owner    => '0',
    content  => template("resolv_conf/resolv_conf.erb"),
  }
}
