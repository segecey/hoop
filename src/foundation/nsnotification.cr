require "./nsobject"

module Hoop
  class NSNotification < NSObject
    import_class
    objc_method "userInfo", nil, "NSDictionary", "user_info"

  end
end
