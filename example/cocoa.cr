require "./../src/hoop"

include Hoop

NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Hoop Example".to_objc

window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
window.set_background_color = NSColor.black_color.to_objc
window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
window.title = appName
window.make_key_and_order_front nil

$text_field_1 = NSTextField.new(NSRect.new(50, 600, 600, 50).to_objc).to_objc
$text_field_2 = NSTextField.new(NSRect.new(50, 540, 600, 50).to_objc).to_objc
$test_button = NSButton.new(NSRect.new(50, 480, 600, 50).to_objc).to_objc

$test_view = NSView.new(NSRect.new(50, 550, 300, 300).to_objc)

$image = NSImage.init_with_image "test.png"

$image_view = NSImageView.new(NSRect.new(50, 50, 50, 50).to_objc)
$image_view.set_image = $image.to_objc

window.content_view << $image_view.to_objc


$text_view = NSTextField.new(NSRect.new(0,100,100,50).to_objc)

$text_view.set_editable = false
$text_view.set_background_color = NSColor.black_color.to_objc
$text_view.value = "merhaba"
$text_view_font = NSFont.font_with_name "HelveticaNeue-Bold", 20
$text_view.set_font = $text_view_font.to_objc
$text_view.set_text_color = NSColor.green_color.to_objc
$test_view << $text_view.to_objc


window.content_view << $test_view.to_objc

window.content_view << $text_field_1
window.content_view << $text_field_2
window.content_view << $test_button


ns_log "app launched"

NSApp.activate_ignoring_other_apps = true
NSApp.run
