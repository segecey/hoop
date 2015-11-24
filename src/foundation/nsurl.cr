require "./nsobject"

module Hoop
  class NSURL < NSObject
    import_class
    objc_method "initWithString:",["NSString"], "NSURL", "initialize"
  end
end
