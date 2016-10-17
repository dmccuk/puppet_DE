# == Class: auto ==
#
# Auto include classes based on hiera
#
# === Parameters ===
#
# None
#
# === Facts ===
#
# None
#
# === Examples ===
#
# none
#
class auto() {
#  tag 'auto'

  hiera_include('classes')
#  role=hiera_include('classes','role_basic')
#  include $role
}
