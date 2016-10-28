require "./nsobject"

module Hoop
  class CALayer < NSObject
    register_class
    method "init", nil, "CALayer", "initialize"
    method "setCornerRadius:", ["CGFloat"], "void", "set_corner_radius="
    method "setBorderColor:", ["CGColorRef"], "void", "set_border_color="
  end
end
