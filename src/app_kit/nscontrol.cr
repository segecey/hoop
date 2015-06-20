require "./NSView"

module Sapphire
  abstract class NSControl < NSView
    import_class

    macro inherited
      objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    end

    objc_method "stringValue", nil, "NSString", "string_value"
    objc_method "setStringValue:", ["NSString"], "void", "string_value="

    # objc_method "action", nil, :SEL
    objc_method "setAction:", ["SEL"], "void", "action="

    objc_method "target", nil, "id"
    objc_method "setTarget:", ["id"], "void", "target="
  end
end
