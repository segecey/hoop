module Hoop
  class NSTextField < NSControl
    register_class
    objc_method "init", nil, "id", "initialize"
    objc_method "setEditable:", ["BOOL"], nil, "set_editable="
    objc_method "sizeToFit", nil, "void", "size_to_fit"
    objc_method "setTextColor:", ["NSColor"], "void", "set_text_color="
    objc_method "setFont:", ["NSFont"], "void", "set_font="
    objc_method "setBackgroundColor:", ["NSColor"], "void", "set_background_color="
    objc_method "backgroundColor", nil, "NSColor", "background_color"
    objc_method "setHidden:", ["BOOL"], "void", "set_hidden"

    def value
      self.string_value
    end

    def value=(v)
      self.string_value = v
    end
  end
end
