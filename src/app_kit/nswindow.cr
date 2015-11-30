module Hoop
  class NSWindow < NSResponder
    register_class

    objc_method "initWithContentRect:styleMask:backing:defer:", ["NSRect", "NSUInteger", "NSBackingStoreType", "BOOL"], "id", "initialize"
    objc_method "cascadeTopLeftFromPoint:", ["NSPoint"], "void", "cascade_top_left_from_point"
    objc_method "title", nil, "NSString"
    objc_method "setTitle:", ["NSString"], "void", "title="
    objc_method "makeKeyAndOrderFront:", ["id"], "void", "make_key_and_order_front"
    objc_method "contentView", nil, "NSView", "content_view"
    objc_method "setBackgroundColor:", ["NSColor"], "void", "set_background_color="
  end
end
