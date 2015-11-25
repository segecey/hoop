require "./NSResponder"

module Hoop
  class NSViewController < NSResponder
    import_class
    objc_method "init", nil, "id", "initialize"
    objc_method "view", nil, "NSView", "view"
    objc_method "performSegueWithIdentifier:sender:", ["NSString", "id"], "void", "perform_segue_with_identifier"
  end
end
