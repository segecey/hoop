require "./NSView"

module Hoop
  abstract class NSControl < NSView
    register_class

    macro inherited
      method "initWithFrame:", ["NSRect"], "id", "initialize"
    end

    method "stringValue", nil, "NSString", "string_value"
    method "setStringValue:", ["NSString"], "void", "string_value="

    # method "action", nil, :SEL
    method "setAction:", ["SEL"], "void", "action="

    method "target", nil, "id"
    method "setTarget:", ["id"], "void", "target="
    method "tag", nil, "NSUInteger", "tag"
    method "setLayer:", ["CALayer"], "void", "set_layer="
  end
end
