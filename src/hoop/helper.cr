module Hoop
  class Helper
    def self.start_app
      LibAppKit.ns_application_main nil.to_objc, nil
    end
  end

  def nsclass(klass : Class)
    return klass.nsclass.obj
  end
end
