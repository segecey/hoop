require "./NSResponder"

module Hoop
  class NSView < NSResponder
    register_class
    method "initWithFrame:", ["NSRect"], "instancetype", "initialize"
    method "initWithCoder:", ["NSCoder"], "id", "initialize"
    method "addSubview:", ["NSView"], "void", "<<"
    method "setHidden:", ["BOOL"], "void", "set_hidden="
    method "viewWithTag:", ["NSUInteger"], "id", "view_with_tag="
    method "drawRect:", ["NSRect"], "void", "draw_rect"
    method "subviews", nil, "NSArray", "subviews"
    method "frame", nil, "NSRect", "frame"
  end
end
