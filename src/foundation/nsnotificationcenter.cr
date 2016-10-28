require "./nsobject"

module Hoop
  class NSNotificationCenter < NSObject
    register_class
    static_method "defaultCenter", nil, "NSNotificationCenter", "default_center"
    method "postNotificationName:object:", ["NSString", "id"], "void", "post_notification"
    method "postNotificationName:object:userInfo:", ["NSString", "id", "NSDictionary"], "void", "post_notification_with_user_info"
    method "addObserver:selector:name:object:", ["id", "SEL", "NSString", "id"], "void", "add_observer"
  end
end
