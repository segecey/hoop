module Hoop
  class Helper
    def self.start_app
      LibAppKit.ns_application_main nil.to_objc, nil
    end
  end

  def convert_to_nsclass(klass : Class)
    return klass.nsclass.obj
  end
end
