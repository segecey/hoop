require "./ca_property_animation"

module Hoop
  class CAKeyframeAnimation < CAPropertyAnimation
    register_class
    objc_static_method "animation", nil, "CAKeyframeAnimation", "animation"
    objc_method "setKeyPath:", ["NSString"], "void", "set_key_path"
    objc_method "setValues:", ["NSMutableArray"], "void", "set_values"
    objc_method "setKeyTimes:", ["NSArray"], "void", "set_key_times"
    objc_method "setDuration:", ["double"], "void", "set_duration"
    objc_method "setAdditive:", ["BOOL"], "void", "set_additive"
  end
end
