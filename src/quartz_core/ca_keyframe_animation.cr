require "./ca_property_animation"

module Hoop
  class CAKeyframeAnimation < CAPropertyAnimation
    register_class
    static_method "animation", nil, "CAKeyframeAnimation", "animation"
    method "setKeyPath:", ["NSString"], "void", "set_key_path"
    method "setValues:", ["NSMutableArray"], "void", "set_values"
    method "setKeyTimes:", ["NSArray"], "void", "set_key_times"
    method "setDuration:", ["double"], "void", "set_duration"
    method "setAdditive:", ["BOOL"], "void", "set_additive"
  end
end
