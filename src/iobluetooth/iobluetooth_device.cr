require "./iobluetooth_object"

module Hoop
  class IOBluetoothDevice < IOBluetoothObject
    register_class
    static_method "pairedDevices", nil, "NSArray", "paired_devices"
    method "addressString", nil, "NSString", "address_string"
    method "getName", nil, "NSString", "name"
  end
end
