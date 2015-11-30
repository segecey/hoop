require "./NSControl"

module Hoop
  class NSTableView < NSControl
    register_class
    objc_method "setDataSource:", ["id"], "void", "set_data_source="
    objc_method "setDelegate:", ["id"], "void", "set_delegate="
    objc_method "setBackgroundColor:", ["NSColor"], "void", "set_background_color="
  end
end
