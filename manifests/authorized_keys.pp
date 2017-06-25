# Class: usbkey_config::authorized_keys
#
#
class usbkey_config::authorized_keys {
  require usbkey_config

  usbkey_config::setting { 'root_authorized_keys_file':
    value  => 'authorized_keys',
    order  => 40,
  }

  concat { 'usbkey_authorized_keys_file':
    path    => '/usbkey/config.inc/authorized_keys',
    ensure_newline => true,
    notify => Exec['copy_root_authorized_keys_file'],
  }

  exec { 'copy_root_authorized_keys_file':
    command     => '/usr/bin/cp /usbkey/config.inc/authorized_keys /root/.ssh/authorized_keys',
    refreshonly => true,
  }

}
