# @summary
#   Installs, configures, and setup PHP
#
# @example
#   include apache
class php (
  String $install_ensure,
  String $www_ensure,
  String $www_path,
  String $info_ensure,
  String $info_path,
  Enum["running", "stopped"] $service_ensure,
  String $service_name,
  Boolean $service_enable,
) {
  contain php::install
  contain php::config
  contain php::service

  Class['::php::install']
  -> Class['::php::config']
  ~> Class['::php::service']
}
