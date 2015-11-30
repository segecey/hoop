module Hoop
  class NSImage < NSControl
    register_class
    objc_static_method "imageNamed:", ["NSString"], "NSImage", "image_named"
  end
end
