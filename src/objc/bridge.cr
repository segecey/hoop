class Object
  #abstract def to_objc
end

struct Nil
  def to_objc
    0xFF_u8
    # self
  end

  def to_id
    AnyObject.new(to_objc)
  end
end

struct Float
  def to_objc
    to_cgfloat
  end

  def to_nsuinteger
    self.to_u64
  end

  def to_nsinteger
    self.to_i64.to_nsinteger
  end

  def to_cgfloat
    to_f64
  end
end

struct Int
  def to_objc
    self
  end

  def to_nsuinteger
    self.to_u64
  end

  def to_nsinteger
    self.to_i64
  end

  def to_cgfloat
    self.to_f64.to_cgfloat
  end
end

alias NSEnum = UInt64
alias CGFloat = Float64

struct Bool
  def to_objc
    self ? 0xFF_u8 : 0x00_u8
  end
end

struct Pointer(T)
  def to_objc
    self
  end
end

class String
  def to_nsstring
    NSString.new(self).to_objc
  end

  def to_objc_string
    NSString.new(self)
  end

  def to_objc
    self
  end
end

# TODO
struct Tuple
  def map_to_objc
  end
end

module Hoop
  def self.send_msg(objc_target, selector_name, *args)
    objc_target.not_nil!
    LibObjC.objc_msgSend(objc_target, selector_name.to_sel.to_objc, *args)
  end
end
