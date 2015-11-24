module Hoop
  class NSMenuItem < NSObject
    import_class

    objc_method "initWithTitle:action:keyEquivalent:", ["NSString", "SEL", "NSString"], "id", "initialize"

    objc_method "title", nil, "NSString"
    objc_method "setTitle:", ["NSString"], "void", "title="

    objc_method "hasSubmenu", nil, "BOOL", "has_submenu?"
    objc_method "submenu", nil, "NSMenu", "submenu"
    objc_method "setSubmenu:", ["NSMenu"], "void", "submenu="
  end
end
