module Hoop
  class NSTextField < NSControl
    import_class

    def value
      self.string_value
    end

    def value=(v)
      self.string_value = v
    end
  end
end
