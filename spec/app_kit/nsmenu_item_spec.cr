require "../spec_helper"

describe "NSMenuItem" do
  it "can be created" do
    NSMenuItem.new "Hoop", "terminate:", "q"
    NSMenuItem.new "Hoop", nil.to_objc, "q"
  end

  it "title can be read" do
    menu_item = NSMenuItem.new "Hoop", nil.to_objc, "q"
    menu_item.title.to_s.should eq("Hoop")
  end

  it "submenu support" do
    item = NSMenuItem.new "Hoop", nil.to_objc, "q"
    item.has_submenu?.should be_false

    menu = NSMenu.new "HoopSubmenu"
    item.submenu = menu.to_objc
    item.submenu.should eq(menu)
  end

end
