require "./NSResponder"

module Hoop
  class NSView < NSResponder
    register_class

    objc_method "initWithFrame:", ["NSRect"], "instancetype", "initialize"
    # objc_method "initWithCoder:", ["NSCoder"], "id", "initialize"
    objc_method "addSubview:", ["NSView"], "void", "<<"
    objc_method "setHidden:", ["BOOL"], "void", "set_hidden="
    objc_method "viewWithTag:", ["NSUInteger"], "id", "view_with_tag="
    objc_method "drawRect:", ["NSRect"], "void", "draw_rect"
    objc_method "subviews", nil, "NSArray", "subviews"
    objc_method "frame", nil, "NSRect", "frame"
  end
end
