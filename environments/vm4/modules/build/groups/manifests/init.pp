class groups {
  
  file { '/etc/group':
    ensure   => 'file',
    group    => '0',
    mode     => '644',
    owner    => '0',
    content  => template("groups/groups.erb"),
  }
}
