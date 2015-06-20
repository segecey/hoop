module Sapphire
  class NSMenu < NSObject
    import_class

    objc_method "initWithTitle:", ["NSString"], "id", "initialize"

    objc_method "addItem:", ["NSMenuItem"], "void", "<<"
  end
end
