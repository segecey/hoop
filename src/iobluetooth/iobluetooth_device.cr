require "./iobluetooth_object"

module Hoop
  class IOBluetoothDevice < IOBluetoothObject
    register_class
    objc_static_method "pairedDevices", nil, "NSArray", "paired_devices"
    objc_method "addressString", nil, "NSString", "address_string"
    objc_method "getName", nil, "NSString", "get_name"
  end
end
