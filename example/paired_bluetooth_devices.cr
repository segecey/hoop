require "./../src/hoop"
include Hoop

a = IOBluetoothDevice.paired_devices.as(NSArray)
i = 0
while i < a.count
  sel = (a.object_at_index = i).as(IOBluetoothDevice)
  puts sel.get_name
  i += 1
end
