require "./NSView"

module Hoop
  class NSTableCellView < NSView
    register_class
    objc_method "initWithFrame:", ["NSRect"], "instancetype", "initialize"
    objc_method "drawRect:", ["NSRect"], "void", "draw_rect"
  end
end
