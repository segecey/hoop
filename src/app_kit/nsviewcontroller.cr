require "./NSResponder"

module Hoop
  class NSViewController < NSResponder
    import_class
    objc_method "init", nil, "id", "initialize"
    objc_method "view", nil, "NSView", "view"
  end
end
