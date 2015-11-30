require "./nsobject"

module Hoop
  class NSURLResponse < NSObject
    register_class
    objc_method "init", nil, "id", "initialize"
  end
end
