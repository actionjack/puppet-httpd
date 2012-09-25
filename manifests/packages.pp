# = httpd::packages
class httpd::packages {
    $packagelist = ['httpd']
    package { $packagelist: ensure => latest }
}
