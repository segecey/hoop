require "../src/hoop.cr"
include Hoop

class MyAppDelegate < NSObject
	export_class
  	LibObjC.class_addProtocol(MyAppDelegate.nsclass.obj, LibObjC.objc_getProtocol("NSApplicationDelegate"))
  	ns_log "hey merhaba"
  	def did_finish_launching(notification)
    	ns_log "didFinishLaunching"
  	end

  	export did_finish_launching, "applicationDidFinishLaunching:", "v@:@"
end

LibAppKit.ns_application_main 0u32, nil
