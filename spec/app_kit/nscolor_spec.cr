require "../spec_helper"

describe "NSColor" do
	it "get colors" do
		NSColor.black_color
    NSColor.red_color
    NSColor.green_color
    NSColor.white_color
	end

  it "color is equal" do
    Hoop.send_msg(LibObjC.objc_getClass("NSColor".to_objc) as Pointer(UInt8), "blackColor", nil.to_objc).should eq(NSColor.black_color.to_objc)
  end
end
