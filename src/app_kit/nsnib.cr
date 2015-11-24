module Hoop
  class NSNib < NSObject
    import_class

    objc_method "initWithNibNamed:bundle:", ["NSString", "NSBundle"], "id", "initialize"

    objc_method "instantiateWithOwner:topLevelObjects:", ["id", "NSArray"], "BOOL", "instantiate_nib_with_owner_top_level_objects"
  end
end
