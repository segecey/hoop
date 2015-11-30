require "./nsobject"

module Hoop
  class NSNotificationCenter < NSObject
    register_class
    objc_static_method "defaultCenter", nil, "NSNotificationCenter", "default_center"
    objc_method "postNotificationName:object:", ["NSString", "id"], "void", "post_notification"
    objc_method "postNotificationName:object:userInfo:", ["NSString", "id", "NSDictionary"], "void", "post_notification_with_user_info"
    objc_method "addObserver:selector:name:object:", ["id", "SEL", "NSString", "id"], "void", "add_observer"
  end
end
