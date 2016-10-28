require "./nsobject"

module Hoop
  class NSMutableArray < NSObject
    register_class
    method "init", nil, "NSMutableArray", "initialize"
    method "count", nil, "NSUInteger", "count"
    method "addObject:", ["id"], "void", "put"
    method "addObject:", ["NSString"], "void", "add_string"
    method "objectAtIndex:", ["NSUInteger"], "id", "get"

    def each(&block)
      i = 0
      while i < self.count
        yield self.object_at_index = i
        i += 1
      end
    end
  end
end
