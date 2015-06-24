describe "NSApplication" do
  it "can be created" do
    NSApplication.shared_application
  end

  it "activation_policy can be set" do
    NSApp.activation_policy=(LibAppKit::NSApplicationActivationPolicy::Regular).should be_true
    NSApp.activation_policy=(LibAppKit::NSApplicationActivationPolicy::Accessory).should be_true
    NSApp.activation_policy=(LibAppKit::NSApplicationActivationPolicy::Prohibited).should be_true
  end

  it "activate_ignoring_other_apps can be set" do
    NSApp.activate_ignoring_other_apps = true
    NSApp.activate_ignoring_other_apps = false
  end

  it "main_menu can be set" do
    NSApp.main_menu = NSMenu.new("aTitle").to_objc
  end
end