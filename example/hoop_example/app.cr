require "./../../src/hoop"
require "./main.cr"

include Hoop
NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Hoop Example".to_objc

window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
window.title = appName
window.make_key_and_order_front nil

main = HoopExample::Main.new window

ns_log "app launched"
NSApp.activate_ignoring_other_apps = true
NSApp.run
