module Sapphire
  class NSMethod
    def initialize(@method : LibObjC::Method)
    end

    def return_type
      @return_type ||= String.new(LibObjC.method_copyReturnType(@method))
    end

    def return_type_as_nsclass_name
      case return_type
      when "Q"; "NSUInteger"
      when "@"; "id"
      else
        raise "not implemented: return_type_as_nsclass_name for #{return_type}"
      end
    end
  end
end
