require "./nsobject"

module Hoop
  class NSJSONSerialization < NSObject
    register_class
    static_method "JSONObjectWithData:options:error:", ["NSData", "NSJSONReadingOptions", "NSError"], "NSDictionary", "json_object_with_data"
  end
end
