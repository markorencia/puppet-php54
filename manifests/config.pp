# @summary
#   Manages PHP Configuration
class php::config {
    file { 'www_conf':
    ensure => $php::www_ensure,
    path   => $php::www_path,
    source => "puppet:///modules/php/${osfamily}.conf",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }

    file { 'info_page':
    ensure => $php::info_ensure,
    path   => $php::info_path,
    source => "puppet:///modules/php/info.php",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }
}
