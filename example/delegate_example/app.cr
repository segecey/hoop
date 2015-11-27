require "./req"
require "./views/*"
require "./controllers/*"

class MyAppDelegate < NSObject
	export_class
  #LibObjC.class_addProtocol(MyAppDelegate.nsclass.obj, LibObjC.objc_getProtocol("NSApplicationDelegate"))
  def did_finish_launching(notification)
    ns_log "didFinishLaunching !!1"
  end

  export "did_finish_launching", "applicationDidFinishLaunching:", "v@:@"
end

LibAppKit.ns_application_main 0u32, nil
