require "./nsobject"

module Hoop
  class NSError < NSObject
    import_class
    objc_method "init", nil, "id", "initialize"
    objc_method "initWithDomain:code:userInfo:", ["NSString", "NSUInteger", "NSDictionary"], "id", "initialize"
  end
end
