require "./nsobject"

module Hoop
  class NSAutoreleasePool < NSObject
    register_class

    objc_method "init", nil, "id", "initialize"
  end
end
