require "./nsobject"

module Sapphire
  class NSAutoreleasePool < NSObject
    import_class

    objc_method "init", nil, "id", "initialize"
  end
end
