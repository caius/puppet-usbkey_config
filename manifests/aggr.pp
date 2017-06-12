# Define: usb_config::aggr
# Parameters:
# $mac_addresses
#
define usbkey_config::aggr (
  $mac_addresses,
  $mode,
) {
  require usbkey_config

  usbkey_config::setting { "${name}_aggr":
    value => inline_template('<%= @mac_addresses.join(",") %>'),
    order => 60,
  }

  usbkey_config::setting { "${name}_lacp_mode":
    value => $mode,
    order => 61,
  }
}
