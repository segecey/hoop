require "./req"
require "./views/myview"
require "./controllers/second_view_controller"
require "./controllers/main_view_controller"
require "./handlers/timer_handler"

class MyAppDelegate < NSObject
	export_class
  #LibObjC.class_addProtocol(MyAppDelegate.nsclass.obj, LibObjC.objc_getProtocol("NSApplicationDelegate"))
  def did_finish_launching(notification)
		#NSTimer.scheduled_timer_with_time_interval 1.0, TimerHandler.new.to_objc, "timer_action".to_sel.to_objc, nil, true
    ns_log "didFinishLaunching !!1"
  end

  export "did_finish_launching", "applicationDidFinishLaunching:", "v@:@"
end

LibAppKit.ns_application_main 0u32, nil
