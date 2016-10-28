module Hoop
  class NSTextField < NSControl
    register_class
    method "init", nil, "id", "initialize"
    method "setEditable:", ["BOOL"], nil, "set_editable="
    method "sizeToFit", nil, "void", "size_to_fit"
    method "setTextColor:", ["NSColor"], "void", "set_text_color="
    method "setFont:", ["NSFont"], "void", "set_font="
    method "setBackgroundColor:", ["NSColor"], "void", "set_background_color="
    method "backgroundColor", nil, "NSColor", "background_color"
    method "setHidden:", ["BOOL"], "void", "set_hidden"
    method "layer", nil, "id", "get_layer"

    def value
      self.string_value
    end

    def value=(v)
      self.string_value = v
    end
  end
end
