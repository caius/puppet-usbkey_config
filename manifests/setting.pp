# Define: usbkey_config::setting
# Parameters:
# name, value
#
define usbkey_config::setting ($value, $order = undef) {
  $key = $title

  concat::fragment { "usbkey_config_${title}":
    target  => 'usbkey_config_file',
    content => inline_template('<%= @key %>=<%= @value %>'),
    order   => $order,
  }
}
