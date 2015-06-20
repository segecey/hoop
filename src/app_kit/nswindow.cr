module Sapphire
  class NSWindow < NSResponder
    import_class

    objc_method "initWithContentRect:styleMask:backing:defer:", ["NSRect","NSUInteger","NSBackingStoreType","BOOL"], "id", "initialize"

    # TODO: options[:sret] in order to use objc_msgSend_stret
    objc_method "cascadeTopLeftFromPoint:", ["NSPoint"], "void", "cascade_top_left_from_point"
    # objc_method "cascadeTopLeftFromPoint:", [:NSPoint], :NSPoint, "cascade_top_left_from_point="

    objc_method "title", nil, "NSString"
    objc_method "setTitle:", ["NSString"], "void", "title="

    objc_method "makeKeyAndOrderFront:", ["id"], "void", "make_key_and_order_front"

    objc_method "contentView", nil, "NSView", "content_view"
  end
end
