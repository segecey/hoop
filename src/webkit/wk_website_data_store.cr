module Hoop
  class WKWebsiteDataStore < NSObject
    register_class
    static_method "defaultDataStore", nil, "id", "default_data_store"
    static_method "nonPersistentDataStore", nil, "id", "non_persistent_data_store"
    method "init", nil, "id", "initialize"
    method "isPersistent", nil, "BOOL", "is_persistent"
    static_method "allWebsiteDataTypes", nil, "NSSet", "all_website_data_types"
    # TODO - Add Other Methods (Implement Objc Methods)
  end
end
