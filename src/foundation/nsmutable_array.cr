require "./nsobject"

module Hoop
  class NSMutableArray < NSObject
    import_class

    objc_method "init", nil, "id", "initialize"

    objc_method "count", nil, "NSUInteger"
    objc_method "addObject:", ["id"], "void", "put"
    objc_method "objectAtIndex:", ["NSUInteger"], "id", "get"
  end
end

module Hoop
  class NSMutableDictionary < NSObject
    import_class
  end
end
