class sshd_config {

  file_line{'/etc/ssh/sshd_config Protocol.26988':
    path  => '/etc/ssh/sshd_config',
    line  => 'Protocol 2',
    match => '^Protocol',
  }

  file_line{'/etc/ssh/sshd_config SyslogFacility.17695':
    path  => '/etc/ssh/sshd_config',
    line  => 'SyslogFacility AUTHPRIV',
    match => '^SyslogFacility',
  }

  file_line{'/etc/ssh/sshd_config PasswordAuthentication.4862':
    path  => '/etc/ssh/sshd_config',
    line  => 'PasswordAuthentication yes',
    match => '^PasswordAuthentication',
  }

  file_line{'/etc/ssh/sshd_config ChallengeResponseAuthentication.827':
    path  => '/etc/ssh/sshd_config',
    line  => 'ChallengeResponseAuthentication no',
    match => '^ChallengeResponseAuthentication',
  }

  file_line{'/etc/ssh/sshd_config GSSAPIAuthentication.7569':
    path  => '/etc/ssh/sshd_config',
    line  => 'GSSAPIAuthentication yes',
    match => '^GSSAPIAuthentication',
  }

  file_line{'/etc/ssh/sshd_config GSSAPICleanupCredentials.8718':
    path  => '/etc/ssh/sshd_config',
    line  => 'GSSAPICleanupCredentials yes',
    match => '^GSSAPICleanupCredentials',
  }

  file_line{'/etc/ssh/sshd_config UsePAM.28972':
    path  => '/etc/ssh/sshd_config',
    line  => 'UsePAM yes',
    match => '^UsePAM',
  }

  file_line{'/etc/ssh/sshd_config AcceptEnv.13915':
    path  => '/etc/ssh/sshd_config',
    line  => 'AcceptEnv LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES',
    match => '^AcceptEnv',
  }

  file_line{'/etc/ssh/sshd_config AcceptEnv.5873':
    path  => '/etc/ssh/sshd_config',
    line  => 'AcceptEnv LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT',
    match => '^AcceptEnv',
  }

  file_line{'/etc/ssh/sshd_config AcceptEnv.23039':
    path  => '/etc/ssh/sshd_config',
    line  => 'AcceptEnv LC_IDENTIFICATION LC_ALL LANGUAGE',
    match => '^AcceptEnv',
  }

  file_line{'/etc/ssh/sshd_config AcceptEnv.10583':
    path  => '/etc/ssh/sshd_config',
    line  => 'AcceptEnv XMODIFIERS',
    match => '^AcceptEnv',
  }

  file_line{'/etc/ssh/sshd_config X11Forwarding.14225':
    path  => '/etc/ssh/sshd_config',
    line  => 'X11Forwarding no',
    match => '^X11Forwarding',
  }

  file_line{'/etc/ssh/sshd_config Subsystem.9193':
    path  => '/etc/ssh/sshd_config',
    line  => 'Subsystem	sftp	/usr/libexec/openssh/sftp-server',
    match => '^Subsystem',
  }

  file_line{'/etc/ssh/sshd_config UsePrivilegeSeparation.11490':
    path  => '/etc/ssh/sshd_config',
    line  => 'UsePrivilegeSeparation yes',
    match => '^UsePrivilegeSeparation',
  }

  file_line{'/etc/ssh/sshd_config PermitRootLogin.24053':
    path  => '/etc/ssh/sshd_config',
    line  => 'PermitRootLogin yes',
    match => '^PermitRootLogin',
  }

  file_line{'/etc/ssh/sshd_config DenyGroups.349':
    path  => '/etc/ssh/sshd_config',
    line  => 'DenyGroups DeniedGroup',
    match => '^DenyGroups',
  }

  file_line{'/etc/ssh/sshd_config ClientAliveCountMax.14821':
    path  => '/etc/ssh/sshd_config',
    line  => 'ClientAliveCountMax 0',
    match => '^ClientAliveCountMax',
  }

  file_line{'/etc/ssh/sshd_config PermitUserEnvironment.30687':
    path  => '/etc/ssh/sshd_config',
    line  => 'PermitUserEnvironment no',
    match => '^PermitUserEnvironment',
  }

  file_line{'/etc/ssh/sshd_config HostbasedAuthentication.32690':
    path  => '/etc/ssh/sshd_config',
    line  => 'HostbasedAuthentication no',
    match => '^HostbasedAuthentication',
  }

  file_line{'/etc/ssh/sshd_config LogLevel.602':
    path  => '/etc/ssh/sshd_config',
    line  => 'LogLevel INFO',
    match => '^LogLevel',
  }

  file_line{'/etc/ssh/sshd_config ClientAliveInterval.6959':
    path  => '/etc/ssh/sshd_config',
    line  => 'ClientAliveInterval 1800',
    match => '^ClientAliveInterval',
  }

  file_line{'/etc/ssh/sshd_config IgnoreRhosts.25741':
    path  => '/etc/ssh/sshd_config',
    line  => 'IgnoreRhosts yes',
    match => '^IgnoreRhosts',
  }

  file_line{'/etc/ssh/sshd_config MaxAuthTries.30921':
    path  => '/etc/ssh/sshd_config',
    line  => 'MaxAuthTries 4',
    match => '^MaxAuthTries',
  }

  file_line{'/etc/ssh/sshd_config PermitEmptyPasswords.2535':
    path  => '/etc/ssh/sshd_config',
    line  => 'PermitEmptyPasswords no',
    match => '^PermitEmptyPasswords',
  }

  file_line{'/etc/ssh/sshd_config Banner.11657':
    path  => '/etc/ssh/sshd_config',
    line  => 'Banner /etc/issue.net',
    match => '^Banner',
  }

  file_line{'/etc/ssh/sshd_config Ciphers.87':
    path  => '/etc/ssh/sshd_config',
    line  => 'Ciphers aes128-ctr,aes192-ctr,aes256-ctr',
    match => '^Ciphers',
  }

}
