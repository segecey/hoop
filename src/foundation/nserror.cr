require "./nsobject"

module Hoop
  class NSError < NSObject
    register_class
    method "init", nil, "id", "initialize"
    method "initWithDomain:code:userInfo:", ["NSString", "NSUInteger", "NSDictionary"], "id", "initialize"
    method "userInfo", nil, "NSDictionary", "user_info"
    method "localizedDescription", nil, "NSString", "localized_description"
  end
end
