module Hoop
  struct NSSize
    def initialize(width, height)
      @obj = LibCF::Size.new
      @obj.width = width.to_cgfloat
      @obj.height = height.to_cgfloat
      @obj
    end

    def to_objc
      @obj
    end

    delegate width, to: @obj
    delegate height, to: @obj
  end
end
