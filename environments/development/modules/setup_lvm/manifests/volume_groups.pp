#
class setup_lvm::volume_groups (

# These are the variables for the module.
# Change them in the ${modulename}/params.pp

  $ensure    = $setup_lvm::params::ensure,
  $disk      = $setup_lvm::params::disk,
  $vg        = $setup_lvm::params::vg,

) inherits setup_lvm::params {

# This sets up which physical(s) disk to use.
# Select the correct one(s) and update the
# params.pp file
 
  physical_volume { $disk:
    ensure => $ensure,
  } ~>

# This section sets up the volume group.
# Change it's name in the params.pp file.

  volume_group { $vg:
    ensure           => $ensure,
    physical_volumes => $disk,
  } 

}
