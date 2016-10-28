module Hoop
  class NSNib < NSObject
    register_class
    method "initWithNibNamed:bundle:", ["NSString", "NSBundle"], "id", "initialize"
    method "instantiateWithOwner:topLevelObjects:", ["id", "NSArray"], "BOOL", "instantiate_nib_with_owner_top_level_objects"
  end
end
