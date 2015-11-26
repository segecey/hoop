require "./req"
require "./views/myview"
require "./controllers/second_view_controller"
require "./controllers/main_view_controller"

class MyAppDelegate < NSObject
	export_class
  #LibObjC.class_addProtocol(MyAppDelegate.nsclass.obj, LibObjC.objc_getProtocol("NSApplicationDelegate"))
  def did_finish_launching(notification)
    ns_log "didFinishLaunching !!1"
  end

  export "did_finish_launching", "applicationDidFinishLaunching:", "v@:@"
end

LibAppKit.ns_application_main 0u32, nil
