module Hoop
  class WKWebsiteDataStore < NSObject
    register_class
    objc_static_method "defaultDataStore", nil, "id", "default_data_store"
    objc_static_method "nonPersistentDataStore", nil, "id", "non_persistent_data_store"
    objc_method "init", nil, "id", "initialize"
    objc_method "isPersistent", nil, "BOOL", "is_persistent"
    objc_static_method "allWebsiteDataTypes", nil, "NSSet", "all_website_data_types"
    # TODO - Add Other Methods (Implement Objc Methods)
  end
end
