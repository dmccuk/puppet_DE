#
class setup_lvm::filesystems (

# These are the variables for the module.
# Change them in the ${modulename}/params.pp

  $fs        = $setup_lvm::params::fs,
  $ensure    = $setup_lvm::params::ensure,
  $lvora     = $setup_lvm::params::lvora,
  $lvredoa   = $setup_lvm::params::lvredoa,
  $lvredob   = $setup_lvm::params::lvredob,
  $fsora     = $setup_lvm::params::fsora,
  $fsprod    = $setup_lvm::params::fsprod,
  $fsredoa   = $setup_lvm::params::fsredoa,
  $fsredob   = $setup_lvm::params::fsredob,
  $orasize   = $setup_lvm::params::orasize,
  $redoasz   = $setup_lvm::params::redoasz,
  $redobsz   = $setup_lvm::params::redobsz,
  $lvorafs   = $setup_lvm::params::lvorafs,
  $lvredoafs = $setup_lvm::params::lvredoafs,
  $lvredobfs = $setup_lvm::params::lvredobfs,


) inherits setup_lvm::params {

# This section creates all the filesystems required.
# Update the params.pp file with the correct name of the
# filesystem. Add more filesystems in the same way.

  filesystem {$lvorafs:
    ensure  => $ensure,
    fs_type => $fs,
    require => Logical_volume[$lvora],
  } ~>
  filesystem {$lvredoafs:
    ensure  => $ensure,
    fs_type => $fs,
    require => Logical_volume[$lvredoa],
  } ~>
  filesystem {$lvredobfs:
    ensure  => $ensure,
    fs_type => $fs,
    require => Logical_volume[$lvredob],
  } ~>

# Now we set up the directory's. Start with the base dir
# and build upon it. Update names and extend the directory's
# and filesystems in the params.pp

  file {$fsora:

    ensure => directory,
    owner  => 'root',
    group  => 'root',
  } ->

# This section creates the Filesystem linked to
# the correct logical volume. Update and expand
# the params.pp as required.

  file {$fsprod:
    ensure  => directory,
    owner   => oracle,
    group   => oinstall,
    require => [Filesystem[$lvorafs],
                File['/oracle'],
                User['oracle'],
                Group['oinstall'],],
  } ~>
  file {$fsredoa:
    ensure  => directory,
    owner   => oracle,
    group   => oinstall,
    require => [Filesystem[$lvredoafs],
                File['/oracle'],
                User['oracle'],
                Group['oinstall'],],
  } ~>
  file {$fsredob:
    ensure  => directory,
    owner   => oracle,
    group   => oinstall,
    require => [Filesystem[$lvredobfs],
                File['/oracle'],
                User['oracle'],
                Group['oinstall'],],
  } ~>

# This section creates the /etc/fstab reference
# for the mount point. Some of the variables have
# been set in the params.pp file.

  mount {$fsprod:

    ensure  => 'mounted',
    atboot  => true,
    options => 'defaults',
    device  => $lvorafs,
    dump    => '1',
    fstype  => $fs,
    pass    => '2',
    target  => '/etc/fstab',
    require => File[$fsprod],
  }
  mount {$fsredoa:

    ensure  => 'mounted',
    atboot  => true,
    options => 'defaults',
    device  => $lvredoafs,
    dump    => '1',
    fstype  => $fs,
    pass    => '2',
    target  => '/etc/fstab',
    require => File[$fsredoa],
  }
  mount {$fsredob:

    ensure  => 'mounted',
    atboot  => true,
    options => 'defaults',
    device  => $lvredobfs,
    dump    => '1',
    fstype  => $fs,
    pass    => '2',
    target  => '/etc/fstab',
    require => File[$fsredob],
  }

}
