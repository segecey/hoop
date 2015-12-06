module Hoop
  class WKUserScript < NSObject
    register_class
    
    objc_method "initWithSource:injectionTime:forMainFrameOnly:", ["NSString", "WKUserScriptInjectionTime", "BOOL"], "id", "initialize"
    objc_method "source", nil, "NSString", "source"
    objc_method "injectionTime", nil, "WKUserScriptInjectionTime", "injection_time"
    objc_method "isForMainFrameOnly", nil, "BOOL", "is_for_main_frame_only"
  end
end
