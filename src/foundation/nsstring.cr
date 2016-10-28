module Hoop
  class NSString < NSObject
    register_class

    method "initWithUTF8String:", ["const_char_ptr"], "instancetype", "initialize"

    def to_s(io)
      io << String.new(Hoop.send_msg(to_objc, "UTF8String"))
    end

    def to_nsstring
      self
    end

    method "length", nil, "NSUInteger"
    method "characterAtIndex:", ["NSUInteger"], "unichar", "[]"
    # NSStringEncoding
    method "dataUsingEncoding:", ["NSStringEncoding"], "NSData", "data_using_encoding"
  end
end
