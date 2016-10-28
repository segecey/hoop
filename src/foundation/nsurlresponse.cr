require "./nsobject"

module Hoop
  class NSURLResponse < NSObject
    register_class
    method "init", nil, "id", "initialize"
  end
end
