module Hoop
  class NSHost < NSObject
    import_class

    objc_static_method "currentHost", nil, "NSHost", "current_host"
    objc_method "localizedName", nil, "NSString", "localized_name"
    objc_method "addresses", nil, "NSArray", "addresses"
    objc_method "address", nil, "NSString", "address"
  end
end
