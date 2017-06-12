# Class: usbkey_config::config
#
# Helper class to make setting "standard" options less ballachy
#
class usbkey_config::config(
  $dns_domain,
  $compute_node_ntp_hosts = 'dhcp',
  $default_keymap = 'uk',
  $dns_resolvers = ['8.8.8.8', '8.8.4.4'],
  $headnode_default_gateway = 'none',
  $hostname = $::fqdn,
  $ntp_hosts = ['0.smartos.pool.ntp.org'],
) {

  if $hostname {
    usbkey_config::setting { 'hostname':
      value => $hostname,
      order => 10,
    }
  }

  if $headnode_default_gateway {
    usbkey_config::setting { 'headnode_default_gateway':
      value => $headnode_default_gateway,
      order => 22,
    }
  }

  if $dns_domain {
    usbkey_config::setting { 'dns_domain':
      value => $dns_domain,
      order => 24,
    }
  }

  if $dns_resolvers {
    usbkey_config::setting { 'dns_resolvers':
      value => inline_template('<%= Array(@dns_resolvers).join(",") %>'),
      order => 24,
    }
  }

  if $compute_node_ntp_hosts {
    usbkey_config::setting { 'compute_node_ntp_hosts':
      value => $compute_node_ntp_hosts,
      order => 26,
    }
  }

  if $ntp_hosts {
    usbkey_config::setting { 'ntp_hosts':
      value => inline_template('<%= Array(@ntp_hosts).join(",") %>'),
      order => 26,
    }
  }

  if $default_keymap {
    usbkey_config::setting { 'default_keymap':
      value => $default_keymap,
      order => 24,
    }
  }
}
