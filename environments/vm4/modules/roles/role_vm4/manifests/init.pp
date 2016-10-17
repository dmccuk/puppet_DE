#Add this role to your puppet master. Either in hiera or the tool you use to manage your infrastructure
class role_vm4 { 

  include fstab
  include groups
  include hosts
  include httpd
  include ksh
  include limits
  include resolv_conf
  include sshd_config
  include sysctl
  include users
}
