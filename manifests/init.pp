# Class: usbkey_config
#
#
class usbkey_config {

  file { '/usbkey/config.inc':
    ensure => 'directory',
    mode   => '0644',
  }

  concat { 'usbkey_config_file':
    path           => '/usbkey/config',
    ensure_newline => true,
    order          => 'numeric',
    # validate_cmd => '/usr/bin/bash -lc "source %"',
  }

  concat::fragment { 'usbkey_config_preamble':
    target  => 'usbkey_config_file',
    content => "#Managed by puppet\n",
    order   => 1,
  }

}
