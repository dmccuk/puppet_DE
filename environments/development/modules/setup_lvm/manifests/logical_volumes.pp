#
class setup_lvm::logical_volumes (

# These are the variables for the module.
# Change them in the ${modulename}/params.pp

  $ensure    = $setup_lvm::params::ensure,
  $vg        = $setup_lvm::params::vg,
  $lvora     = $setup_lvm::params::lvora,
  $lvredoa   = $setup_lvm::params::lvredoa,
  $lvredob   = $setup_lvm::params::lvredob,
  $orasize   = $setup_lvm::params::orasize,
  $redoasz   = $setup_lvm::params::redoasz,
  $redobsz   = $setup_lvm::params::redobsz,


) inherits setup_lvm::params {

# This section sets up the logical volumes based on the VG.
# Update these settings in the params.pp file.

  logical_volume { $lvora:
    ensure       => $ensure,
    volume_group => $vg,
    size         => $orasize,
  } 
  logical_volume { $lvredoa:
    ensure       => $ensure,
    volume_group => $vg,
    size         => $redoasz,
  }
  logical_volume { $lvredob:
    ensure       => $ensure,
    volume_group => $vg,
    size         => $redobsz,
  }

}
