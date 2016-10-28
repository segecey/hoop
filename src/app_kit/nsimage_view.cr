module Hoop
  class NSImageView < NSControl
    register_class
    method "initWithFrame:", ["NSRect"], "id", "initialize"
    method "setImage:", ["NSImage"], "void", "set_image="
    method "layer", nil, "CALayer", "layer"
    method "setHidden:", ["BOOL"], "void", "set_hidden="
  end
end
