class WebViewDelegate < NSObject
  export_class
  LibObjC.class_addProtocol(WebViewDelegate.nsclass.obj, LibObjC.objc_getProtocol("WKNavigationDelegate"))
end

class WebViewController < NSViewController
  export_class
  LibObjC.class_addProtocol(WebViewDelegate.nsclass.obj, LibObjC.objc_getProtocol("WKNavigationDelegate"))

  def view_did_load
    ns_log "WebViewController called !!!1"
    view = self.view as NSView

    webview = WKWebView.new NSRect.new(0, 0, 700, 700).to_objc
    webview.set_navigation_delegate WebViewDelegate.new.to_objc

    url = NSURL.url_with_string "http://crystal-lang.org"
    req = NSURLRequest.request_with_url url.to_objc

    webview.load_request req.to_objc

    view << webview.to_objc
  end

  export "view_did_load", "viewDidLoad"
end
