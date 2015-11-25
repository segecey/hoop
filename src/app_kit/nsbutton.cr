require "./NSControl"

module Hoop
  class NSButton < NSControl
    import_class

    objc_method "title", nil, "NSString"
    objc_method "setTitle:", ["NSString"], nil, "set_title="
    objc_method "setHidden:", ["BOOL"], "void", "set_hidden="
  end
end
