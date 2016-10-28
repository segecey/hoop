module Hoop
  class WKUserScript < NSObject
    register_class
    method "initWithSource:injectionTime:forMainFrameOnly:", ["NSString", "WKUserScriptInjectionTime", "BOOL"], "id", "initialize"
    method "source", nil, "NSString", "source"
    method "injectionTime", nil, "WKUserScriptInjectionTime", "injection_time"
    method "isForMainFrameOnly", nil, "BOOL", "is_for_main_frame_only"
  end
end
