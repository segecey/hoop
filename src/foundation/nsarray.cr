require "./nsobject"

module Hoop
  class NSArray < NSObject
    register_class

    method "init", nil, "id", "initialize"
    method "count", nil, "NSUInteger", "count"
    method "objectAtIndex:", ["NSUInteger"], "id", "object_at_index="

    def each(&block)
      i = 0
      while i < self.count
        yield self.object_at_index = i
        i += 1
      end
    end
  end
end
