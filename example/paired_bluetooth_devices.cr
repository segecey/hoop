require "./../src/hoop"
include Hoop

devices = IOBluetoothDevice.paired_devices

if devices.count > 0
	devices.each do |device|
		device = device.as(IOBluetoothDevice)
		puts device.name
	end
else
	ns_log "Device not found!"	
end
