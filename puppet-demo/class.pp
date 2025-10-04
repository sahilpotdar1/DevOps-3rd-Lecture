class mydemo {
  file { 'demo-dir':
    ensure => directory,
    path   => "C:/puppet-demo",
  }

  file { 'demo-file':
    ensure  => file,
    path    => "C:/puppet-demo/demo.txt",
    content => "This file is managed by Puppet\n",
    require => File['demo-dir'],   # makes sure folder is created first
  }
}

include mydemo