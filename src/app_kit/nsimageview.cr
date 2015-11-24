module Hoop
  class NSImageView < NSControl
    import_class
    objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    objc_method "setImage:", ["NSImage"], "void", "set_image="
  end
end
