require "./nsobject"

module Hoop
  class NSMutableArray < NSObject
    register_class

    objc_method "init", nil, "NSMutableArray", "initialize"

    objc_method "count", nil, "NSUInteger", "count"
    objc_method "addObject:", ["id"], "void", "put"
    objc_method "addObject:", ["NSString"], "void", "add_string"
    objc_method "objectAtIndex:", ["NSUInteger"], "id", "get"
  end
end


module Hoop
	class NSMutableDictionary < NSObject
		register_class

	end
end
