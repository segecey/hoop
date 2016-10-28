require "./NSControl"

module Hoop
  class NSTableView < NSControl
    register_class
    method "setDataSource:", ["id"], "void", "set_data_source="
    method "setDelegate:", ["id"], "void", "set_delegate="
    method "setBackgroundColor:", ["NSColor"], "void", "set_background_color="
    method "makeViewWithIdentifier:owner:", ["NSString", "id"], "NSView", "make_view_with_identifier"
  end
end
