module Hoop
  class NSProcessInfo < NSObject
    register_class

    objc_init_method "processInfo", "process_info"

    objc_method "processName", nil, "NSString", "process_name"
  end
end
