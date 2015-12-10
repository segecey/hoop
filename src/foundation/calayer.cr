require "./nsobject"

module Hoop
  class CALayer < NSObject
    register_class
    objc_method "init", nil, "CALayer", "initialize"
    objc_method "setCornerRadius:", ["CGFloat"], "void", "set_corner_radius="
    objc_method "setBorderColor:", ["CGColorRef"], "void", "set_border_color="
  end
end
