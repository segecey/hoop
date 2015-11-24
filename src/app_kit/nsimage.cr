module Hoop
  class NSImage < NSControl
    import_class
    objc_static_method "imageNamed:", ["NSString"], "NSImage", "init_with_image"
  end
end
