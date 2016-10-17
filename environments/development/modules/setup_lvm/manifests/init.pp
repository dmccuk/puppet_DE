#
class setup_lvm {

  include setup_lvm::users
  include setup_lvm::volume_groups
  include setup_lvm::logical_volumes
  include setup_lvm::filesystems
  include setup_lvm::cron
  include setup_lvm::sshd_config

}
