#
class setup_lvm::sshd_config {

  file_line{'/etc/ssh/sshd_config X11Forwarding':
    path  => '/etc/ssh/sshd_config',
    line  => 'X11Forwarding yes',
    match => '^X11Forwarding',
  }

}
