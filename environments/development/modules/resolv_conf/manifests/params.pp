# == Class: resolv_conf::params
#
class resolv_conf::params {
  $domain     = $::domain
  $search     = $domain
  #$nameserver = [8.8.8.8]
  $timeout    = '5'
  $attempts   = '2'
  $rotate     = true

      $resolv_conf_file  = '/etc/resolv.conf'
      $resolv_conf_group = 'root'
}
