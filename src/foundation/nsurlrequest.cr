require "./nsobject"

module Hoop
  class NSURLRequest < NSObject
    register_class
    # method "initWithURL:", ["NSString"], "id", "initialize"
    method "initWithURL:", ["NSString"], "id", "initialize"
    static_method "requestWithURL:", ["NSURL"], "id", "request_with_url"
  end
end
