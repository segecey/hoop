require "../spec_helper"

describe "NSTextField" do

  it "value can be set/get" do
    text_field = NSTextField.new(NSRect.new(0, 0, 200, 200).to_objc)
    text_field.value = "We love Crystal !"
    text_field.value.to_s.should eq("We love Crystal !")
  end

  it "background can be set/get" do
    text_field = NSTextField.new(NSRect.new(0, 0, 200, 200).to_objc)
    text_field.set_background_color = NSColor.black_color.to_objc
    text_field.background_color.should eq(NSColor.white_clas)
  end



end
