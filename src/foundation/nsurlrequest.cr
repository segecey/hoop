require "./nsobject"
module Hoop
  class NSURLRequest < NSObject
    import_class
    #objc_method "initWithURL:", ["NSString"], "id", "initialize"
    objc_method "initWithURL:", ["NSString"], "id", "initialize"
    objc_static_method "requestWithURL:", ["NSURL"], "id", "request_with_url"
  end
end
