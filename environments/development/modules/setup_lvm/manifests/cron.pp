#
class setup_lvm::cron {

  file_line{'/etc/cron.allow oracle':
    path  => '/etc/cron.allow',
    line  => 'oracle',
    match => '^oracle',
  }
  file_line{'/etc/cron.allow root':
    path  => '/etc/cron.allow',
    line  => 'root',
    match => '^root',
  }


}
