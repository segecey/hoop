module Hoop
  class NSImage < NSControl
    register_class
    static_method "imageNamed:", ["NSString"], "NSImage", "image_named"
  end
end
