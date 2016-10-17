#
class setup_lvm::params {

  $fs        = 'ext4'
  $ensure    = present
  $disk      = '/dev/sdb1'
  $vg        = 'oracle'
  $lvora     = 'oraclelv'
  $lvredoa   = 'redoalv'
  $lvredob   = 'redoblv'
  $fsora     = '/oracle'
  $fsprod    = '/oracle/product'
  $fsredoa   = '/oracle/redoa'
  $fsredob   = '/oracle/redob'
  $orasize   = '4M'
  $redoasz   = '4M'
  $redobsz   = '4M'
  $lvorafs   = '/dev/oracle/oraclelv'
  $lvredoafs = '/dev/oracle/redoalv'
  $lvredobfs = '/dev/oracle/redoblv'
}
