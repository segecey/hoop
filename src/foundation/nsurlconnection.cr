require "./nsobject"

module Hoop
  class NSURLConnection < NSObject
    register_class
    static_method "sendSynchronousRequest:returningResponse:error:", ["NSURLRequest", "NSURLResponse", "NSError"], "NSData", "send_synchronous_request"
    static_method "requestWithURL:", ["NSURL"], "id", "request_with_url"
    method "initWithRequest:delegate:", ["NSURLRequest", "id"], "id", "initialize"
    method "start", nil, "void", "start"
  end
end
