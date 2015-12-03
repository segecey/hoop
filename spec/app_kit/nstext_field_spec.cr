require "../spec_helper"
$text_field = NSTextField.new(NSRect.new(0, 0, 200, 200).to_objc)
describe "NSTextField" do

  it "value can be set/get" do
    $text_field.value = "We love Crystal !"
    $text_field.value.to_s.should eq("We love Crystal !")
  end

  it "background can be set" do
    $text_field.set_background_color = NSColor.black_color.to_objc
  end

  it "set font" do
    $text_field.set_font = (NSFont.system_font_of_size = 10).to_objc
  end

  it "set hidden" do
    $text_field.set_hidden = false.to_objc
  end

  it "set text color" do
    $text_field.set_text_color = NSColor.red_color.to_objc
  end

  it "set editable" do
    $text_field.set_editable = true.to_objc
  end

  it "size to fit" do
    $text_field.size_to_fit
  end

end
