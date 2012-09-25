# httpd::service
class httpd::service {
  service { 'httpd':
    hasrestart => 'true',
    hasstatus  => 'true',
    enable     => 'true',
    ensure     => 'running',
  }
}
