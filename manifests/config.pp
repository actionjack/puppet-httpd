# = httpd::config
class httpd::config {

  $proxystring = "ProxyPass /sample/ ajp://localhost:8009/sample/
  ProxyPassReverse /sample/ ajp://localhost:8009/sample/
  RewriteEngine On
  RewriteRule ^/$ /sample/ [R]"

  File {
    notify => Class['httpd::service']
  }

  file {'/etc/httpd/conf.d/sample.conf':
    content => "${proxystring}",
    mode    => '0644',
  }
  file {'/etc/httpd/conf.d/welcome.conf':
    ensure => 'absent',
  }
}
