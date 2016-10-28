module Hoop
  class WKPreferences < NSObject
    register_class
    method "minimumFontSize", nil, "CGFloat", "minimum_font_size"
    method "javaScriptEnabled", nil, "BOOL", "javascript_enabled"
    method "javaScriptCanOpenWindowsAutomatically", nil, "BOOL", "javascript_can_open_windows_automatically"
    method "javaEnabled", nil, "BOOL", "java_enabled"
    method "plugInsEnabled", nil, "BOOL", "plugins_enabled"
  end
end
