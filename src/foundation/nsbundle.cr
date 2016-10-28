module Hoop
  class NSBundle < NSObject
    register_class

    static_method "mainBundle", nil, :NSBundle, "main_bundle"
    static_method "bundleWithPath", [:NSString], :NSBundle, "main_bundle"
  end
end
