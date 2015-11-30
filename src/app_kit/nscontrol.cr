require "./NSView"

module Hoop
  abstract class NSControl < NSView
    register_class

    macro inherited
      objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    end

    objc_method "stringValue", nil, "NSString", "string_value"
    objc_method "setStringValue:", ["NSString"], "void", "string_value="

    # objc_method "action", nil, :SEL
    objc_method "setAction:", ["SEL"], "void", "action="

    objc_method "target", nil, "id"
    objc_method "setTarget:", ["id"], "void", "target="
    objc_method "tag", nil, "NSUInteger", "tag"
    objc_method "setLayer:", ["CALayer"], "void", "set_layer="
  end
end
