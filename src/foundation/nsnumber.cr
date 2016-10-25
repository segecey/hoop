module Hoop
  class NSNumber < NSObject
    register_class
    objc_method "intValue", nil, "NSUInteger"
  end
end
