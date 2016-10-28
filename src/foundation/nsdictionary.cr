require "./nsobject"

module Hoop
  class NSDictionary < NSObject
    register_class
    method "objectForKey:", ["NSString"], "id", "object_for_key"
  end
end
