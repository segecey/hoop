require "./NSResponder"

module Hoop
  class NSView < NSResponder
    import_class

    objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    objc_method "addSubview:", ["NSView"], "void", "<<"    
  end
end
