require "./nsobject"

module Hoop
  class NSTimer < NSObject
    register_class
    objc_static_method "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", ["NSTimeInterval", "id", "SEL", "id", "BOOL"], "NSTimer", "scheduled_timer_with_time_interval"
  end
end
