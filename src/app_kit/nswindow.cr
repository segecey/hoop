module Hoop
  class NSWindow < NSResponder
    register_class
    method "initWithContentRect:styleMask:backing:defer:", ["NSRect", "NSUInteger", "NSBackingStoreType", "BOOL"], "id", "initialize"
    method "cascadeTopLeftFromPoint:", ["NSPoint"], "void", "cascade_top_left_from_point"
    method "title", nil, "NSString"
    method "setTitle:", ["NSString"], "void", "title="
    method "makeKeyAndOrderFront:", ["id"], "void", "make_key_and_order_front"
    method "contentView", nil, "NSView", "content_view"
    method "setBackgroundColor:", ["NSColor"], "void", "set_background_color="
  end
end
