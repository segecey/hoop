require "./nsobject"

module Hoop
  class NSMutableURLRequest < NSObject
    register_class
    method "initWithURL:", ["NSString"], "id", "initialize"
    method "initWithURL:cachePolicy:timeoutInterval:", ["NSURL", "NSURLRequestCachePolicy", "NSTimeInterval"], "id", "initialize"
    method "setHTTPMethod:", ["NSString"], "void", "set_http_method="
    method "setHTTPBody:", ["NSData"], "void", "set_http_body="
    static_method "requestWithURL:", ["NSURL"], "NSMutableURLRequest", "request_with_url"
  end
end
