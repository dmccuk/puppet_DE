#
class profile_base {

  include motd
  include ntp
  include stdlib
#  include ssh
  include users
  include iptables
  #include grub # taken out for now
  include cis
  #include adauth
  include at
  include resolv_conf
  include setup_lvm
}
