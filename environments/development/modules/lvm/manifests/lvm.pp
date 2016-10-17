#
class lvm1 {

  notify { 'this is the LVM module': }

lvm::volume { 'mylv':
  ensure => present,
  vg     => 'myvg',
  pv     => '/dev/sdb1',
  fstype => 'ext4',
  size   => '10M',
}

}
