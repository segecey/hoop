require "./nsobject"
module Hoop
  class NSURLRequest < NSObject
    import_class
    #objc_method "initWithURL:", ["NSString"], "id", "initialize"
    objc_method "initWithURL:", ["NSString"], "id", "initialize"
  end
end
