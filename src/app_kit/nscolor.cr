require "./NSResponder"

module Hoop
  class NSColor < NSControl
    import_class
    objc_static_method "blackColor", nil, "NSColor", "black_color"
    objc_static_method "redColor", nil, "NSColor", "red_color"
  end
end
