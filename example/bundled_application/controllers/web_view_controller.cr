class WebViewDelegate < NSObject
  export_class
end

class MyWebView < WKWebView
  export_class
end

class WebViewController < NSViewController
  export_class
  add_delegate WebViewDelegate, "WKNavigationDelegate"

  action "view_did_load", nil, "viewDidLoad" do
    ns_log "WebViewController called !!!1"
    view = self.view.as(NSView)

    webview = WKWebView.new NSRect.new(0, 0, 700, 700).to_objc
    webview.set_navigation_delegate self.to_objc

    url = NSURL.url_with_string "http://crystal-lang.org"
    req = NSURLRequest.request_with_url url.to_objc

    webview.load_request req.to_objc

    view << webview.to_objc
  end
end