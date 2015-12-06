require "../spec_helper"

describe "IOBluetoothDevice" do
  it "get paired devices" do
    paired_devices = IOBluetoothDevice.paired_devices
    paired_devices.class.to_s.should eq("Hoop::NSArray")
  end
end
