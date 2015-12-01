require "../spec_helper"

describe "NSMenu" do
  it "can be created" do
    NSMenu.new "Hoop"
  end

  it "menu items can be added" do
    menu = NSMenu.new "Hoop"
    menu << NSMenuItem.new("hoop1", nil.to_objc, "q").to_objc
    menu << NSMenuItem.new("hoop2", nil.to_objc, "q").to_objc
  end
end
