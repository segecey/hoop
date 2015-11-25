require "../../src/hoop.cr"
include Hoop

class MyWindow < NSWindow
	export_class
	def example_action
		ns_log "merhaba dünya"
	end
	export example_action, "exampleAction"
end

class MyView < NSView
	export_class
	def awake_after_using_coder(coder)
		ns_log "fsadasdasdasd!sadsadasda!"
	end
	def example_action
		ns_log "merhaba dünya"
	end
	export example_action, "exampleAction"
end

class TimerHandler < NSObject
  export_class
  def timer_action
    ns_log "timer action called"
  end
  export "timer_action"
end

class MyAppDelegate < NSObject
	export_class
  LibObjC.class_addProtocol(MyAppDelegate.nsclass.obj, LibObjC.objc_getProtocol("NSApplicationDelegate"))
  def did_finish_launching(notification)
		NSTimer.scheduled_timer_with_time_interval 1.0, TimerHandler.new.to_objc, "timer_action".to_sel.to_objc, nil, true
    ns_log "didFinishLaunching !!1"
  end
  export did_finish_launching, "applicationDidFinishLaunching:", "v@:@"
end

LibAppKit.ns_application_main 0u32, nil
