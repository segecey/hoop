require "./../src/hoop"

include Hoop

a = NSURL.new "http://google.com"
r = NSURLRequest.new(a.to_objc)
NSURLConnection.reqest_with_url r.to_objc

exit
NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Hello, World !".to_objc

window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
window.set_background_color = NSColor.white_color.to_objc
window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
window.title = appName
window.make_key_and_order_front nil

hoop_logo = NSImage.init_with_image "logo.png"

hoop_logo_view = NSImageView.new(NSRect.new(200,350, 300, 300).to_objc)
hoop_logo_view.set_image = hoop_logo.to_objc

window.content_view << hoop_logo_view.to_objc

hello_label = NSTextField.new(NSRect.new(160, 250, 380, 36).to_objc)
hello_label.value = "#{NSHost.current_host.localized_name}. 😎".to_objc
hello_label_font = NSFont.bold_system_font_of_size = 23.0
hello_label.set_font = hello_label_font.to_objc
window.content_view << hello_label.to_objc


love_label = NSTextField.new(NSRect.new(200, 160, 300, 70).to_objc)
love_label.value = "I ❤️ Crystal !".to_objc
love_label_font = NSFont.bold_system_font_of_size = 50.0
love_label.set_font = love_label_font.to_objc
window.content_view << love_label.to_objc

ns_log "app launched"

NSApp.activate_ignoring_other_apps = true
NSApp.run
