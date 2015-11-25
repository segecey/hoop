require "./nsobject"

module Hoop
  class NSNotificationCenter < NSObject
    import_class
    objc_static_method "defaultCenter", nil, "NSNotificationCenter", "default_center"
    objc_method "postNotificationName:object:", ["NSString", "id"], "void", "post_notification"
    objc_method "addObserver:selector:name:object:", ["id", "SEL", "NSString", "NSString"], "void", "add_observer"
  end
end
