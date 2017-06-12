# Define: usb_config::nic
# Parameters:
# $mac, $nic, $ip, $netmask, $network, $gateway
#
define usbkey_config::nic (
  $ip,
  $gateway = undef,
  $mac = undef,
  $netmask = undef,
  $network = undef,
  $nic = undef,
  $tagname = undef,
) {

  if ($mac == undef) and ($nic == undef) {
    fatal { 'usbkey_config::nic requires either mac or nic passing': }
  }

  if ($ip != "dhcp") and ($netmask == undef) {
    fatal { '"netmask" is required option when "ip" is not "dhcp"': }
  }

  require usbkey_config

  concat::fragment { "usbkey_config_nic_${name}":
    target  => 'usbkey_config_file',
    content => template("${module_name}/config_nic.erb"),
    order   => 50,
  }
}
