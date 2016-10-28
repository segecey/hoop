module Hoop
  class NSProcessInfo < NSObject
    register_class
    init_method "processInfo", "process_info"
    method "processName", nil, "NSString", "process_name"
  end
end
