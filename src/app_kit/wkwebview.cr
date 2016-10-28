require "./NSView"

module Hoop
  class WKWebView < NSView
    register_class
    method "init", nil, "id", "initialize"
    method "initWithFrame:", ["NSRect"], "id", "initialize"
    method "setNavigationDelegate:", ["id"], "void", "set_navigation_delegate"
    method "loadRequest:", ["NSURLRequest"], "void", "load_request"
  end
end
