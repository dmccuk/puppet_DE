class fstab {
  
  mount { '/':
    ensure  => 'mounted',
    device  => '/dev/mapper/VolGroup-lv_root',
    dump    => '1',
    fstype  => 'ext4',
    options => 'defaults',
    pass    => '1',
    target  => '/etc/fstab',
  }
  mount { '/boot':
    ensure  => 'mounted',
    device  => 'UUID=90fd207f-c5e7-4e20-a735-774041fe69d3',
    dump    => '1',
    fstype  => 'ext4',
    options => 'defaults',
    pass    => '2',
    target  => '/etc/fstab',
  }
  mount { '/dev/pts':
    ensure  => 'mounted',
    device  => 'devpts',
    dump    => '0',
    fstype  => 'devpts',
    options => 'gid=5,mode=620',
    pass    => '0',
    target  => '/etc/fstab',
  }
  mount { '/dev/shm':
    ensure  => 'mounted',
    device  => 'tmpfs',
    dump    => '1',
    fstype  => 'tmpfs',
    options => 'defaults,nodev,nosuid,noexec',
    pass    => '2',
    target  => '/etc/fstab',
  }
  mount { '/proc':
    ensure  => 'mounted',
    device  => 'proc',
    dump    => '0',
    fstype  => 'proc',
    options => 'defaults',
    pass    => '0',
    target  => '/etc/fstab',
  }
  mount { '/sys':
    ensure  => 'mounted',
    device  => 'sysfs',
    dump    => '0',
    fstype  => 'sysfs',
    options => 'defaults',
    pass    => '0',
    target  => '/etc/fstab',
  }
  mount { '/var/tmp':
    ensure  => 'mounted',
    device  => '/tmp',
    dump    => '0',
    fstype  => 'none',
    options => 'bind',
    pass    => '0',
    target  => '/etc/fstab',
  }
  mount { 'swap':
    ensure  => 'unmounted',
    device  => '/dev/mapper/VolGroup-lv_swap',
    dump    => '0',
    fstype  => 'swap',
    options => 'defaults',
    pass    => '0',
    target  => '/etc/fstab',
  }
}
