require "./lib_objc.cr"

module Sapphire
  class Selector
    def initialize(name : String)
      @sel = LibObjC.sel_registerName(name)
    end

    def initialize(sel : LibObjC::SEL)
      @sel = sel
    end

    def name
      String.new(LibObjC.sel_getName(@sel))
    end

    def to_objc
      @sel
    end

    def to_sel
      self
    end

    def to_s(io)
      io << name
    end
  end
end

class String
  def to_sel
    Sapphire::Selector.new(self)
  end
end

struct Nil
  def to_sel
    self
  end
end
