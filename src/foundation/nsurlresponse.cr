require "./nsobject"

module Hoop
  class NSURLResponse < NSObject
    import_class
    objc_method "init", nil, "id", "initialize"
  end
end
