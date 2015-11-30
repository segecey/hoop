require "./../src/hoop"

include Hoop

NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Hello, World !".to_objc

$window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
$window.set_background_color = NSColor.white_color.to_objc
$window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
$window.title = appName
$window.make_key_and_order_front nil.to_objc

class WebViewDelegate < NSObject
  export_class
  add_delegate "WKNavigationDelegate"
end

$webview = WKWebView.new NSRect.new(0, 0, 700, 700).to_objc
$webview.set_navigation_delegate WebViewDelegate.new.to_objc

url = NSURL.url_with_string "http://crystal-lang.org"
req = NSURLRequest.request_with_url url.to_objc

$webview.load_request req.to_objc

$window.content_view << $webview.to_objc

ns_log "app launched"

NSApp.activate_ignoring_other_apps = true
NSApp.run
