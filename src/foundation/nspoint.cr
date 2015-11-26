module Hoop
  struct NSPoint
    def initialize(x, y)
      @obj = LibCF::Point.new
      @obj.x = x.to_cgfloat
      @obj.y = y.to_cgfloat
    end

    def to_objc
      @obj
    end

    delegate x, @obj
    delegate y, @obj
  end
end
