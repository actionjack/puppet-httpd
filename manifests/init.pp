# = Class: httpd
#
# This class installs and configures the httpd service.
#
# == Parameters:
#
# Check params.pp to configure
#
# == Actions:
#   Installs and configures the httpd service.
#
# == Requires:
#   - Package["httpd"] in your local repo
#
# == Sample Usage:
#
# site.pp:
#    import "httpd" (optional since it's in autoload format)
#
# nodes.pp:
#    class httpdserver{
#        include httpd
#    }
#
class httpd {
  require httpd::params
  include httpd::packages
  include httpd::service
  include httpd::config

  Class['httpd::packages'] -> Class['httpd::service']
}
