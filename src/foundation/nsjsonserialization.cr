require "./nsobject"

module Hoop
  class NSJSONSerialization < NSObject
    import_class
    objc_static_method "JSONObjectWithData:options:error:", ["NSData", "NSJSONReadingOptions", "NSError"], "NSDictionary", "json_object_with_data"
  end
end
