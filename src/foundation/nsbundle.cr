module Sapphire
  class NSBundle < NSObject
    import_class

    objc_static_method "mainBundle", nil, :NSBundle, "main_bundle"
    objc_static_method "bundleWithPath", [:NSString], :NSBundle, "main_bundle"
  end
end
