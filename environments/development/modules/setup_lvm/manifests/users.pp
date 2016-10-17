#
class setup_lvm::users {

# The required users/groups for the modules. In this
# case, oracle and oinstall.

  user { 'oracle':
    ensure           => 'present',
    uid              => 5001,
    gid              => 501,
    comment          => 'Oracle Database',
    home             => '/home/oracle',
    shell            => '/bin/bash',
    password_max_age => '99999',
    password_min_age => '0',
    forcelocal       => true,
  } 

 group { 'oinstall':
    ensure => 'present',
    gid    => 5012,
  }
}
