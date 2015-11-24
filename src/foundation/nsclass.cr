module Hoop
  class NSClass
    property :obj

    def initialize(c : LibObjC::Class)
      @obj = c
    end

    def initialize(className : String)
      @obj = LibObjC.objc_getClass(className)
    end

    def name
      String.new(LibObjC.class_getName(@obj))
    end

    def superclass
      s = LibObjC.class_getSuperclass(@obj)
      unless s.nil?
        NSClass.new(s)
      else
        nil
      end
    end

    def metaclass
      NSClass.new(@obj.value.isa)
    end

    def send_msg(message, *args)
      Hoop.send_msg(@obj as Pointer(UInt8), message, *args)
    end

    def to_s(io)
      io << name
    end

    def self.all
      total = LibObjC.objc_getClassList(nil, 0u64)
      buffer = Pointer(LibObjC::Class).malloc(total)
      LibObjC.objc_getClassList(buffer, total)
      buffer.to_slice(total).map { |x| NSClass.new x }.each do |nsclass|
        yield nsclass
      end
    end

    def instance_method(sel)
      NSMethod.new LibObjC.class_getInstanceMethod(@obj, sel.to_sel.to_objc)
    end
  end
end
