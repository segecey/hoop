require "./nsobject"

module Hoop
  class NSTableColumn < NSObject
    register_class
    objc_method "identifier", nil, "NSString", "get_identifier"
  end
end
