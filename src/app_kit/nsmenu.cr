module Hoop
  class NSMenu < NSObject
    register_class
    method "initWithTitle:", ["NSString"], "id", "initialize"
    method "addItem:", ["NSMenuItem"], "void", "<<"
  end
end
