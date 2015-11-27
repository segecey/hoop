require "./nsobject"
module Hoop
  class NSArray < NSObject
    import_class
    objc_method "count", nil, "NSUInteger", "count"
    objc_method "objectAtIndex:", ["NSUInteger"], "id", "object_at_index="
  end
end
