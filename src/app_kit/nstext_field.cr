module Hoop
  class NSTextField < NSControl
    import_class

    objc_method "setEditable:", ["BOOL"], nil, "set_editable="
    objc_method "sizeToFit", nil, "void", "size_to_fit"
    
    def value
      self.string_value
    end

    def value=(v)
      self.string_value = v
    end
  end
end
