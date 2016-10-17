#
Package {
  allow_virtual => false
}

  $role = hiera('classes','role_basic')
  include $role

