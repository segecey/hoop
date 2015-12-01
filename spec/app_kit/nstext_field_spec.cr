require "../spec_helper"

describe "NSTextField" do

  it "value can be get/set" do
    text_field = NSTextField.new(NSRect.new(0, 0, 200, 200).to_objc)
    text_field.value = "We love Crystal !"
    text_field.value.to_s.should eq("We love Crystal !")
  end
end
