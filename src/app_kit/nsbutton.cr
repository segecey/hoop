require "./NSControl"

module Hoop
  class NSButton < NSControl
    register_class
    method "initWithFrame:", ["NSRect"], "instancetype", "initialize"
    method "title", nil, "NSString"
    method "setTitle:", ["NSString"], nil, "set_title="
    method "setHidden:", ["BOOL"], "void", "set_hidden="
  end
end
