module Hoop
  class AnyObject
    def initialize(pointer : UInt8*)
      @obj = pointer
      # retain
    end

    def to_objc
      @obj.not_nil!
    end

    def nsclass
      @nsclass ||= NSClass.new(LibObjC.object_getClass(to_objc))
      @nsclass.not_nil!
    end

    def as(nsclass : Class)
      raise "Runtime obj-c cast error '#{self.nsclass}' is not a '#{nsclass.nsclass}'" unless is_kind_of_class(nsclass)
      nsclass.new(to_objc)
    end

    def is_kind_of_class(klass : Class)
      is_kind_of_class(klass.nsclass)
    end

    def is_kind_of_class(nsclass : NSClass)
      Hoop.send_msg(to_objc, "isKindOfClass:", nsclass.obj).address != 0
    end

    macro method_missing(name, args, block)
      method = nsclass.instance_method({{name}})
      objc_method_body {{name}}, nil, method.return_type
    end
  end
end
