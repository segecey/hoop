require "./nsobject"

module Hoop
  class NSError < NSObject
    import_class
    objc_method "init", nil, "id", "initialize"
    objc_method "initWithDomain:code:userInfo:", ["NSString", "NSUInteger", "NSDictionary"], "id", "initialize"
    objc_method "userInfo", nil, "NSDictionary", "user_info"
    objc_method "localizedDescription", nil, "NSString", "localized_description"
  end
end
