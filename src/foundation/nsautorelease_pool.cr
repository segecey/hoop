require "./nsobject"

module Hoop
  class NSAutoreleasePool < NSObject
    register_class

    method "init", nil, "id", "initialize"
  end
end
