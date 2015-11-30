require "./NSView"
module Hoop
  class WKWebView < NSView
    import_class
    objc_method "init", nil, "id", "initialize"
    objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    objc_method "setNavigationDelegate:", ["id"], "void", "set_navigation_delegate"
    objc_method "loadRequest:", ["NSURLRequest"], "void", "load_request"
  end
end
