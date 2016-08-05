module Hoop
  struct NSRect
    def initialize(x, y, w, h)
      @origin = NSPoint.new(x, y)
      @size = NSSize.new(w, h)

      @obj = LibCF::Rect.new
      @obj.origin = @origin.to_objc
      @obj.size = @size.to_objc
    end

    def teste
    end

    def to_objc
      @obj
    end

    property :origin
    property :size

    delegate x, to: @origin
    delegate y, to: @origin
    delegate height, to: @size
    delegate width, to: @size
  end
end
