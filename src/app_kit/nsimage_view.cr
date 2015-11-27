module Hoop
  class NSImageView < NSControl
    import_class
    objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    objc_method "setImage:", ["NSImage"], "void", "set_image="
    objc_method "layer", nil, "CALayer", "layer"
    objc_method "setHidden:", ["BOOL"], "void", "set_hidden="
  end
end
