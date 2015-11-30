require "./nsobject"

module Hoop
  class NSNotification < NSObject
    register_class
    objc_method "userInfo", nil, "NSDictionary", "user_info"
  end
end
