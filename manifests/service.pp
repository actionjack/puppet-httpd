# httpd::service
class httpd::service {
  service { 'httpd':
    ensure     => 'running',
    hasrestart => true,
    hasstatus  => true,
    enable     => true,
  }
}
