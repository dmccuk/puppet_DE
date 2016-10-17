class sysctl {

  file_line{'/etc/sysctl.conf net.ipv4.ip_forward.24198':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.ip_forward = 0',
    match => '^net.ipv4.ip_forward',
  }

  file_line{'/etc/sysctl.conf net.ipv4.conf.default.rp_filter.12612':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.conf.default.rp_filter = 1',
    match => '^net.ipv4.conf.default.rp_filter',
  }

  file_line{'/etc/sysctl.conf net.ipv4.conf.default.accept_source_route.4282':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.conf.default.accept_source_route = 0',
    match => '^net.ipv4.conf.default.accept_source_route',
  }

  file_line{'/etc/sysctl.conf kernel.sysrq.24153':
    path  => '/etc/sysctl.conf',
    line  => 'kernel.sysrq = 0',
    match => '^kernel.sysrq',
  }

  file_line{'/etc/sysctl.conf kernel.core_uses_pid.13744':
    path  => '/etc/sysctl.conf',
    line  => 'kernel.core_uses_pid = 1',
    match => '^kernel.core_uses_pid',
  }

  file_line{'/etc/sysctl.conf net.ipv4.tcp_syncookies.19376':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.tcp_syncookies = 1',
    match => '^net.ipv4.tcp_syncookies',
  }

  file_line{'/etc/sysctl.conf kernel.msgmnb.4843':
    path  => '/etc/sysctl.conf',
    line  => 'kernel.msgmnb = 65536',
    match => '^kernel.msgmnb',
  }

  file_line{'/etc/sysctl.conf kernel.msgmax.7596':
    path  => '/etc/sysctl.conf',
    line  => 'kernel.msgmax = 65536',
    match => '^kernel.msgmax',
  }

  file_line{'/etc/sysctl.conf kernel.shmmax.12873':
    path  => '/etc/sysctl.conf',
    line  => 'kernel.shmmax = 68719476736',
    match => '^kernel.shmmax',
  }

  file_line{'/etc/sysctl.conf kernel.shmall.28843':
    path  => '/etc/sysctl.conf',
    line  => 'kernel.shmall = 4294967296',
    match => '^kernel.shmall',
  }

  file_line{'/etc/sysctl.conf net.ipv4.conf.all.send_redirects=0.30190':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.conf.all.send_redirects=0',
    match => '^net.ipv4.conf.all.send_redirects=0',
  }

  file_line{'/etc/sysctl.conf net.ipv4.conf.default.send_redirects=0.4378':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.conf.default.send_redirects=0',
    match => '^net.ipv4.conf.default.send_redirects=0',
  }

  file_line{'/etc/sysctl.conf net.ipv4.conf.all.accept_redirects=0.29026':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.conf.all.accept_redirects=0',
    match => '^net.ipv4.conf.all.accept_redirects=0',
  }

  file_line{'/etc/sysctl.conf net.ipv4.conf.default.accept_redirects=0.4203':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.conf.default.accept_redirects=0',
    match => '^net.ipv4.conf.default.accept_redirects=0',
  }

  file_line{'/etc/sysctl.conf net.ipv6.conf.all.accept_ra=0.4669':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv6.conf.all.accept_ra=0',
    match => '^net.ipv6.conf.all.accept_ra=0',
  }

  file_line{'/etc/sysctl.conf net.ipv6.conf.default.accept_ra=0.2166':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv6.conf.default.accept_ra=0',
    match => '^net.ipv6.conf.default.accept_ra=0',
  }

  file_line{'/etc/sysctl.conf net.ipv6.conf.all.accept_redirects=0.11325':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv6.conf.all.accept_redirects=0',
    match => '^net.ipv6.conf.all.accept_redirects=0',
  }

  file_line{'/etc/sysctl.conf net.ipv6.conf.default.accept_redirects=0.25511':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv6.conf.default.accept_redirects=0',
    match => '^net.ipv6.conf.default.accept_redirects=0',
  }

  file_line{'/etc/sysctl.conf net.ipv4.conf.all.log_martians=1.27790':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.conf.all.log_martians=1',
    match => '^net.ipv4.conf.all.log_martians=1',
  }

  file_line{'/etc/sysctl.conf net.ipv4.conf.default.log_martians=1.32417':
    path  => '/etc/sysctl.conf',
    line  => 'net.ipv4.conf.default.log_martians=1',
    match => '^net.ipv4.conf.default.log_martians=1',
  }

}
