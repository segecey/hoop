require "./nsobject"

module Hoop
  class NSURL < NSObject
    register_class
    objc_method "initWithString:",["NSString"], "NSURL", "initialize"
    objc_static_method "URLWithString:", ["NSString"], "id", "url_with_string"
  end
end
