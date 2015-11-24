require "./nsobject"

module Hoop
  class NSAutoreleasePool < NSObject
    import_class

    objc_method "init", nil, "id", "initialize"
  end
end
