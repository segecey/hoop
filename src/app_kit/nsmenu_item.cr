module Hoop
  class NSMenuItem < NSObject
    register_class
    method "initWithTitle:action:keyEquivalent:", ["NSString", "SEL", "NSString"], "id", "initialize"
    method "title", nil, "NSString"
    method "setTitle:", ["NSString"], "void", "title="
    method "hasSubmenu", nil, "BOOL", "has_submenu?"
    method "submenu", nil, "NSMenu", "submenu"
    method "setSubmenu:", ["NSMenu"], "void", "submenu="
  end
end
