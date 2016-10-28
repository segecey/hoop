require "./../app_kit/nsview"

module Hoop
  class NSProgressIndicator < NSView
    register_class
    method "init", nil, "id", "initialize"
    method "initWithFrame:", ["NSRect"], "id", "initialize"
    method "startAnimation:", ["id"], "void", "start_animation"
    method "setStyle:", ["NSProgressIndicatorStyle"], "void", "set_style="
    method "removeFromSuperview", nil, "void", "remove_from_superview"
  end
end
