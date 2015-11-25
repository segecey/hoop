require "./../app_kit/nsview"
module Hoop
  class NSProgressIndicator < NSView
    import_class
    objc_method "init", nil, "id", "initialize"
    objc_method "initWithFrame:", ["NSRect"], "id", "initialize"
    objc_method "startAnimation:", ["id"], "void", "start_animation"
    objc_method "setStyle:", ["NSProgressIndicatorStyle"], "void", "set_style="
  end
end
