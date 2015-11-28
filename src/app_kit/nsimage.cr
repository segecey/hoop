module Hoop
  class NSImage < NSControl
    import_class
    objc_static_method "imageNamed:", ["NSString"], "NSImage", "image_named"
  end
end
