module Hoop
  class WKPreferences < NSObject
    register_class
    objc_method "minimumFontSize", nil, "CGFloat", "minimum_font_size"
    objc_method "javaScriptEnabled", nil, "BOOL", "javascript_enabled"
    objc_method "javaScriptCanOpenWindowsAutomatically", nil, "BOOL", "javascript_can_open_windows_automatically"
    objc_method "javaEnabled", nil, "BOOL", "java_enabled"
    objc_method "plugInsEnabled", nil, "BOOL", "plugins_enabled"
  end
end
