module Hoop
  class NSFont < NSControl
    static_method "systemFontOfSize:", ["CGFloat"], "NSFont", "system_font_of_size="
    static_method "boldSystemFontOfSize:", ["CGFloat"], "NSFont", "bold_system_font_of_size="
    static_method "fontWithName:size:", ["NSString", "CGFloat"], "NSFont", "font_with_name"
  end
end
