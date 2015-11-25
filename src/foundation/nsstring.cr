module Hoop
  class NSString < NSObject
    import_class

    objc_method "initWithUTF8String:", ["const_char_ptr"], "instancetype", "initialize"

    def initialize(s : NSString)
      raise "" # ???? compiler limitation
    end

    def to_s(io)
      io << String.new(Hoop.send_msg(to_objc, "UTF8String"))
    end

    def to_nsstring
      self
    end

    objc_method "length", nil, "NSUInteger"
    objc_method "characterAtIndex:", ["NSUInteger"], "unichar", "[]"
    #NSStringEncoding
    objc_method "dataUsingEncoding:", ["NSStringEncoding"], "NSData", "data_using_encoding"
  end
end
