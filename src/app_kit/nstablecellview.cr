require "./NSView"

module Hoop
  class NSTableCellView < NSView
    register_class
    method "initWithFrame:", ["NSRect"], "instancetype", "initialize"
    method "drawRect:", ["NSRect"], "void", "draw_rect"
  end
end
