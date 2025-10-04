class motd($studentname = 'Student') {
  file { 'motd-file':
    ensure  => file,
    path    => $facts['os']['family'] ? {
      'windows' => "F:/Symbiosis DevOps 2025-26/3rd Lecture/puppet-demo/motd.txt",
      default   => "/tmp/motd.txt",
    },
    content => epp("F:/Symbiosis DevOps 2025-26/3rd Lecture/puppet-demo/motd.epp", { 'studentname' => $studentname }),
  }
}

class { 'motd': studentname => 'Sahil' }