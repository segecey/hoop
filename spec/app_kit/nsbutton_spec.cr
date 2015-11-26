require "../spec_helper"

describe "NSButton" do
	it "can be created" do
		NSButton.new NSRect.new(0,150,100,50).to_objc
	end

	it "title can be getter/setter" do
		button = NSButton.new NSRect.new(0,150,100,50).to_objc
		button.set_title = "Testing"
		button.title.to_s.should eq("Testing")
	end
end
