require "./../app_kit/nsview"

module Hoop
  class NSProgressIndicator < NSView
    register_class
    objc_method "init", nil, "id", "initialize"
    objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    objc_method "startAnimation:", ["id"], "void", "start_animation"
    objc_method "setStyle:", ["NSProgressIndicatorStyle"], "void", "set_style="
    objc_method "removeFromSuperview", nil, "void", "remove_from_superview"
  end
end
