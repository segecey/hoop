module Hoop
  class NSHost < NSObject
    register_class

    static_method "currentHost", nil, "NSHost", "current_host"
    method "localizedName", nil, "NSString", "localized_name"
    method "addresses", nil, "NSArray", "addresses"
    method "address", nil, "NSString", "address"
  end
end
