require "./nsobject"

module Hoop
  class NSURLConnection < NSObject
    import_class
    objc_static_method "sendSynchronousRequest:returningResponse:error:", ["NSURLRequest", "NSURLResponse", "NSError"], "NSData", "send_synchronous_request"
    objc_static_method "requestWithURL:", ["NSURL"], "id", "request_with_url"
    objc_method "initWithRequest:delegate:", ["NSURLRequest", "id"], "id", "initialize"
  end
end
