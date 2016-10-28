require "./nsobject"

module Hoop
  class NSURL < NSObject
    register_class
    method "initWithString:", ["NSString"], "NSURL", "initialize"
    static_method "URLWithString:", ["NSString"], "id", "url_with_string"
  end
end
