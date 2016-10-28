require "./NSResponder"

module Hoop
  class NSColor < NSControl
    register_class
    static_method "blackColor", nil, "NSColor", "black_color"
    static_method "redColor", nil, "NSColor", "red_color"
    static_method "greenColor", nil, "NSColor", "green_color"
    static_method "whiteColor", nil, "NSColor", "white_color"
    objc_method "set", nil, "void", "set"
    objc_method "setFill", nil, "void", "set_fill"
  end
end
