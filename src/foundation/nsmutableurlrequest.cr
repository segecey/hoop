require "./nsobject"

module Hoop
  class NSMutableURLRequest < NSObject
    import_class
    objc_method "initWithURL:", ["NSString"], "id", "initialize"
    objc_method "initWithURL:cachePolicy:timeoutInterval:", ["NSURL", "NSURLRequestCachePolicy", "NSTimeInterval"], "id", "initialize"
    objc_method "setHTTPMethod:", ["NSString"], "void", "set_http_method="
    objc_method "setHTTPBody:", ["NSData"], "void", "set_http_body="
    objc_static_method "requestWithURL:", ["NSURL"], "NSMutableURLRequest", "request_with_url"
  end
end
