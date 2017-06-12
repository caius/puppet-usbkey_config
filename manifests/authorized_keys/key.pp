# Define: usbkey_config::authorized_keys::key
# Parameters:
# content
#
define usbkey_config::authorized_keys::key(
  $content = undef,
  $source = undef,
) {
  require usbkey_config::authorized_keys

  concat::fragment { "usbkey_config_authorized_keys_${title}":
    target    => 'usbkey_authorized_keys_file',
    content => $content,
    source  => $source,
  }
}
