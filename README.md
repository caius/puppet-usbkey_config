# `puppet-usbkey_config`

Quick little module to manage `/usbkey/config` & root authorized ssh keys for a standalone [SmartOS](https://www.joyent.com/smartos) hypervisor.

## Usage

* `usbkey_config::setting` represents a single setting line in `/usbkey/config`
* `usbkey_config::nic` wraps up defining a network
* `usbkey_config::config` sets a bunch of standard settings easilt

## License

See LICENSE.
